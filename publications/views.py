from django.shortcuts import get_object_or_404, render, get_list_or_404
from activities.models import Typesubactivity
from publications.models import  Publication,Typepublication,Publicationdetail,Publicationauthor
from django.core import serializers
from django.http import JsonResponse, HttpResponseBadRequest
from datetime import date
from django.db.models import Q
import json

from association.models import Person,Image
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
    context["publications"]=publications
    context["pub_type"]=type
    return render(request, "publications/index.html", context)

def detail(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'
    if is_ajax:
        if request.method == 'GET':
            pub_id = request.GET.get('pub_id','')
            publication = get_object_or_404(Publication, pk = pub_id)
            image = {}
            try:
                image['front'] = serializers.serialize('json', [ publication.idimagefront])
                image['back'] = serializers.serialize('json', [ publication.idimageback])
            except Image.DoesNotExist:
                image['front'] = serializers.serialize('json', [ publication.idimagefront])
            
            
            pubdetails = Publicationdetail.objects.filter(idpublication= pub_id)
            pubidauthors = Publicationauthor.objects.filter(idpublication=pub_id)
            pubauthors = []
            for idauthor in pubidauthors:
                pubauthors.append(Person.objects.get(pk=idauthor.idperson_id))

            publication_serialize =  serializers.serialize('json', [ publication])
            pubdetails_serialize =  serializers.serialize('json', pubdetails)
            pubauthors_serialize =  serializers.serialize('json', pubauthors)
            return  JsonResponse({ 'publication': publication_serialize, 'details': pubdetails_serialize, 'authors': pubauthors_serialize,'image': image})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')
