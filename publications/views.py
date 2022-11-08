from django.shortcuts import get_object_or_404, render, redirect
from publications.models import  Publication,Typepublication,Publicationdetail,Publicationauthor
from django.core import serializers
from django.http import JsonResponse, HttpResponseBadRequest,HttpResponseRedirect,HttpResponse
from datetime import date
from django.db.models import Q
from django.db.models import Min,Max
from django.urls import reverse
from association.models import Person
from vahatraDjango.functions import pagination, toSlug
# Create your views here.
from association.views import getContext
from django.views.decorators.cache import cache_page

@cache_page(60*60)
def index(request,typepublication_id=1,typepublication_name='malagasy-nature'):
    
    context = getContext()
    type = get_object_or_404(Typepublication, pk=typepublication_id)
    context["pub_type"]=type

    slug = toSlug(type.type)
    if typepublication_name!=slug:
        return redirect('publications:index', typepublication_id=type.id, typepublication_name=slug)
    

    publications = Publication.objects.filter(Q(idtype=typepublication_id)|Q(date__isnull=True))
    context["publications"]=publications.order_by('-date')
    
    
    min = Publication.objects.all().aggregate(Min('date'))
    max = Publication.objects.all().aggregate(Max('date'))
    context["years"]=range(min['date__min'].year,max['date__max'].year+1)
    return render(request, "publications/index.html", context)

@cache_page(60*60)
def detail(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'
    if is_ajax:
        if request.method == 'GET':
            pub_id = request.GET.get('pub_id')
            publication = get_object_or_404(Publication, pk = pub_id)
            
            pubdetails = Publicationdetail.objects.filter(idpublication= pub_id)
            pubidauthors = Publicationauthor.objects.filter(idpublication=pub_id)
            pubauthors = []
            for idauthor in pubidauthors:
                pubauthors.append(Person.objects.get(pk=idauthor.idperson_id))

            publication_type_serialize =  serializers.serialize('json', [ Typepublication.objects.get(pk=publication.idtype.id)])
            pubdetails_serialize =  serializers.serialize('json', pubdetails)
            pubauthors_serialize =  serializers.serialize('json', pubauthors)
            return  JsonResponse({ 'details': pubdetails_serialize, 'authors': pubauthors_serialize, 'typepublication':publication_type_serialize})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

def search(request,keyword="",page=1):
    context = getContext()

    if 'keyword' in request.GET:
        if request.GET['keyword']=="":
            return HttpResponseRedirect(reverse("publications:index"))
        keyword = request.GET['keyword']

    if keyword=="":
        return HttpResponseRedirect(reverse("publications:index"))

    list=Publication.objects.all()
    try:
        year = int(keyword)
        list = list.filter(date__year=year)
    except ValueError:
        list = list.filter(Q(title__icontains=keyword)|
        Q(publicationdetail__name__icontains=keyword)|
        Q(publicationauthor__idperson__name__icontains=keyword)|
        Q(publicationauthor__idperson__username__icontains=keyword)|
        Q(idtype__type__icontains=keyword))

    list = list.distinct()

    context['results_number']=list.count()

    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, 5, '-date')
        page_number = dictpagination['page_number']
        pubs = dictpagination['list']
        context["pubs"] = pubs

    context['keyword']=keyword
    context["page_number"]= range(1,page_number+1)
    return render(request, "publications/search.html", context)



def multicriteriasearch(request):
    context = getContext()
    page = 1
    if request.method == 'POST':
        author=""
        typepublication=""
        year=""
        pubs = Publication.objects.all()
        if request.POST['author']!="":
            author=request.POST['author']
            pubs = pubs.filter(Q(publicationauthor__idperson__name__icontains=author)|
            Q(publicationauthor__idperson__username__icontains=author))
        if request.POST['type_pub']!="":
            typepublication=request.POST['type_pub']
            pubs = pubs.filter(idtype=typepublication)
        if request.POST['year']!="":
            year=request.POST['year']
            pubs = pubs.filter(date__year=year)
        if 'page' in request.POST:
            page = int(request.POST['page'])
        
        
        context['results_number']=pubs.count()

        page_number=0
        if (pubs.count() > 0):
            dictpagination = pagination(page, pubs, 5, '-date')
            page_number = dictpagination['page_number']
            pubs = dictpagination['list']
            context["pubs"] = pubs
            
        context['author']=author
        context['typepublication']=typepublication
        context['year']=year
        context["page_number"]= range(1,page_number+1)
        return render(request, "publications/search.html", context)

    return HttpResponseRedirect(reverse("publications:index"))

def download_pdf_file(request, location='',filename=''):
    import os
    import mimetypes
    if filename != '':
        # Define Django project base directory
        BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        # Define the full file path
        filepath = BASE_DIR + '/static/pdf/'+location+'/' + filename
        # Open the file for reading content
        path = open(filepath, 'rb')
        # Set the mime type
        mime_type, _ = mimetypes.guess_type(filepath)
        # Set the return value of the HttpResponse
        response = HttpResponse(path, content_type=mime_type)
        # Set the HTTP header for sending to browser
        response['Content-Disposition'] = "attachment; filename=%s" % filename
        # Return the response value
        return response
        
    else:
        # Load the template
        return redirect("publications:index")