from django.shortcuts import get_object_or_404, render, get_list_or_404
from math import ceil
from activities.models import Typevisite, Visite,Imagevisite,Lieu,Intervenantfieldschool,Seminaire, Recherche
from association.models import  Partner,Person
from django.core import serializers
from django.http import JsonResponse, HttpResponseBadRequest
from datetime import date
from publications.models import Typepublication
from django.db.models import Q

# Create your views here.

type_visit = Typevisite.objects.all
type_pub = Typepublication.objects.all
context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }

def index(request, typevisite_id='V1'):
    visits = get_list_or_404(Visite, Q(idtypevisite = typevisite_id), Q(date__lt=date.today())|Q(date__isnull=True))
    context["visits"]= visits
    context["type_visite"]=get_object_or_404(Typevisite, pk=typevisite_id)
    return render(request, "activities/index.html", context)

def visit_by_lieu(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

   
    if is_ajax:
        if request.method == 'GET':
            tab = []
           
            lieu_id = request.GET.get('lieu_id','')
            id_visit_type = request.GET.get('id_visit_type','')
            visits = get_list_or_404(Visite, idlieu=lieu_id, idtypevisite=id_visit_type)
            lieu = get_object_or_404(Lieu, pk = lieu_id)
            
            for visit in visits:
                dict = {}
                dict['visit']= serializers.serialize('json', [ visit])
                images = []
                for image in Imagevisite.objects.filter(idvisite=visit.id):
                    images.append(image.idimage)
                dict['images']= serializers.serialize('json',images)
                dict['fs']=serializers.serialize('json',Intervenantfieldschool.objects.filter(id=visit.id))
               
                tab.append(dict)

            lieu_serialize =  serializers.serialize('json', [ lieu])
            return  JsonResponse({'visits': tab, 'lieu': lieu_serialize})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

def support(request):
    partner_list = Partner.objects.all()
    context["partner_list"]= partner_list
    
    return render(request, "activities/support.html", context)

def conference(request,page=1):
    page -= 1
    page_number = Seminaire.objects.filter(Q(date__lt=date.today())|Q(date__isnull=True)).count()
    page_number = ceil(page_number/6)

    conferences = Seminaire.objects.filter(Q(date__lt=date.today())|Q(date__isnull=True)).order_by('-date')[(page*6):((page*6)+6)]

    context["conferences"]= conferences
    context["page_number"]= range(1,page_number+1)
    return render(request, "activities/conference.html", context)


def research(request,page=1):
    page -= 1
    page_number = Recherche.objects.filter(Q(date__lt=date.today())|Q(date__isnull=True)).count()
    page_number = ceil(page_number/6)

    researches = Recherche.objects.filter(Q(date__lt=date.today())|Q(date__isnull=True)).order_by('-date')[(page*6):((page*6)+6)]

    context["researches"]= researches
    context["page_number"]= range(1,page_number+1)
    return render(request, "activities/research.html", context)

def researchDetail(request,research_id):
    research = get_object_or_404(Recherche, pk=research_id)
    context["research"]= research
    return render(request, "activities/researchDetail.html", context)

def collection(request):
    return render(request, "activities/collection.html",context)

def ajaxVisitDetail(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'GET':
           
            visit_id = request.GET.get('visit_id','')
            visite = get_object_or_404(Visite, pk = visit_id)
            print(visite.idlieu)
            lieu = get_object_or_404(Lieu, pk = visite.idlieu_id)
            images= serializers.serialize('json',Imagevisite.objects.filter(idvisite=visite.id))
               
            visite_serialize =  serializers.serialize('json', [ visite])
            lieu_serialize =  serializers.serialize('json', [ lieu])
            return  JsonResponse({'visit': visite_serialize, 'images': images, 'lieu': lieu_serialize})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

def ajaxResearchDetail(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'GET':
           
            research_id = request.GET.get('research_id','')
            research = get_object_or_404(Recherche, pk = research_id)
            
            research_serialize =  serializers.serialize('json', [ research])
            return  JsonResponse({'research': research_serialize})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

def ajaxConferenceDetail(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'GET':
           
            conference_id = request.GET.get('conference_id','')
            conference = get_object_or_404(Seminaire, pk = conference_id)
            author = conference.idperson
            conference_serialize =  serializers.serialize('json', [ conference])
            author_serialize =  serializers.serialize('json', [ author])
            return  JsonResponse({'conference': conference_serialize, 'author': author_serialize})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')