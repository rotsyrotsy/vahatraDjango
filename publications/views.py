from django.shortcuts import get_object_or_404, render, get_list_or_404
from activities.models import Typesubactivity
from publications.models import  Publication,Typepublication,Publicationdetail,Publicationauthor
from django.core import serializers
from django.http import JsonResponse, HttpResponseBadRequest,HttpResponseRedirect
from datetime import date
from django.db.models import Q
from django.db.models import Min,Max
from django.urls import reverse
from math import ceil
from association.models import Person
# Create your views here.

type_visit = Typesubactivity.objects.all
type_pub = Typepublication.objects.all
context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }

def index(request,typepublication_name='malagasy-nature', typepublication_id=1):
    publications = Publication.objects.filter(Q(idtype=typepublication_id), Q(date__lte = date.today())|Q(date__isnull=True))
    type = get_object_or_404(Typepublication, pk=typepublication_id)
    context["publications"]=publications.order_by('id')
    context["pub_type"]=type
    
    min = Publication.objects.all().aggregate(Min('date'))
    max = Publication.objects.all().aggregate(Max('date'))
    context["years"]=range(min['date__min'].year,max['date__max'].year+1)
    return render(request, "publications/index.html", context)

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
    context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }
    if request.method == 'POST':
        if request.POST['keyword']=="":
            return HttpResponseRedirect(reverse("publications:index"))
        keyword = request.POST['keyword']

    if keyword=="":
        return HttpResponseRedirect(reverse("publications:index"))

    
    pubdetails = Publicationdetail.objects.filter(Q(name__icontains=keyword))
    pubs = Publication.objects.filter((Q(title__icontains=keyword)|Q(description__icontains=keyword))|Q(id__in=pubdetails.values('idpublication')))
    context['results_number']=pubs.count()

    page_number = pubs.count()
    page_number = ceil(page_number/10)

    if (page>page_number): page = page_number
    elif page<1 : page = 1
    
    page -= 1
    if pubs.count()>0:
        pubs = pubs.order_by('-date')[(page*10):((page*10)+10)]

    context['pubs']=pubs
    context['keyword']=keyword
    context["page_number"]= range(1,page_number+1)
    return render(request, "publications/search.html", context)



def multicriteriasearch(request):
    context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }

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
            pubs = pubs.distinct()
        if request.POST['type_pub']!="":
            typepublication=request.POST['type_pub']
            pubs = pubs.filter(idtype=typepublication)
        if request.POST['year']!="":
            year=request.POST['year']
            pubs = pubs.filter(date__year=year)
        if 'page' in request.POST:
            page = int(request.POST['page'])
        
        context['results_number']=pubs.count()

        page_number = pubs.count()
        page_number = ceil(page_number/10)

        if (page>page_number): page = page_number
        elif page<1 : page = 1
        
        page -= 1

        if pubs.count() >0:
            pubs = pubs.order_by('-date')[(page*10):((page*10)+10)]
        context['pubs']=pubs
        context['author']=author
        context['typepublication']=typepublication
        context['year']=year
        context["page_number"]= range(1,page_number+1)
        return render(request, "publications/search.html", context)

    return HttpResponseRedirect(reverse("publications:index"))