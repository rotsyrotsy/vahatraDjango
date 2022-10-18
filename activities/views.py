from django.shortcuts import get_object_or_404, render, get_list_or_404,redirect
from math import ceil
from activities.models import Activityinstitution, Activityperson, Typeactivity, Typesubactivity, Visit,Activityimage,Location,Intervenantfieldschool,Activity
from association.models import  Partner,Person
from django.core import serializers
from django.http import JsonResponse, HttpResponseBadRequest
from datetime import date,timedelta
from publications.models import Typepublication
from django.db.models import Q
from vahatraDjango.functions import toSlug,pagination
# # Create your views here.

type_activity = Typeactivity.objects.filter(~Q(id='A4')).order_by("type")
type_pub = Typepublication.objects.all().order_by("id")

def index(request,typeactivity_id=None,typeactivity_name=None, typesubactivity_id=None,typesubactivity_name=None,page=1):
    context = {
        "types_activity": type_activity,
        "types_pub": type_pub,
        }
    typeactivity= get_object_or_404(Typeactivity, pk = typeactivity_id)
    context["type_activity"] = typeactivity
        
    slug = toSlug(typeactivity.type)
    if typeactivity_name!=slug:
        return redirect('activities:index', typeactivity_id=typeactivity.id, typeactivity_name=slug,typesubactivity_id=typesubactivity_id,typesubactivity_name=typesubactivity_name)
    thelist = [] 

    if typesubactivity_id:
        typesubactivity = get_object_or_404(Typesubactivity, pk=typesubactivity_id)
        slug = toSlug(typesubactivity.type)
        if typesubactivity_name!=slug:
            return redirect('activities:index',typeactivity_id=typeactivity.id, typeactivity_name=typeactivity.type, typesubactivity_id=typesubactivity.id, typesubactivity_name=slug)
        
        context["type_subactivity"]=typesubactivity

        if typeactivity.id == 'A1': # IF THE ACTIVITY IS A VISIT
            visits = get_list_or_404(Visit, Q(idactivity__idtypesubactivity = typesubactivity_id), Q(idactivity__date__lt=date.today())|Q(idactivity__date__isnull=True))
            context["visits"]= visits
            
            locations= list(map(lambda x: x.idlocation, visits)) #locations of visit
            locations=list(dict.fromkeys(locations)) #remove duplicates
            context['locations']=locations.sort(key=lambda x: x.name, reverse=False)

            listImageLocation = []
            for location in locations:
                dictionnary = {
                    'location':location,
                }
                visitLocations = location.visit_set.filter(idactivity__idtypesubactivity=typesubactivity.id)
                image = None
                for visitLocation in visitLocations:
                    if visitLocation.idactivity.activityimage_set.all():
                        image = visitLocation.idactivity.activityimage_set.all()[0]
                        break
                dictionnary['image']=image
                listImageLocation.append(dictionnary)
            
            context['dicts']=listImageLocation
            return render(request, "activities/index.html", context)
        else:
            thelist = Activity.objects.filter( Q(idtypeactivity_id = typeactivity.id),Q(date__lt=date.today())|Q(date__isnull=True), Q(idtypesubactivity_id=typesubactivity.id))
    else:
        thelist = Activity.objects.filter( Q(idtypeactivity_id = typeactivity.id),Q(date__lt=date.today())|Q(date__isnull=True))
    
    page_number=0
    if (thelist.count() > 0):
        dictpagination = pagination(page, thelist, 6, '-date')
        page_number = dictpagination['page_number']
        activities = dictpagination['list']
        context["activities"] = activities

    context["page_number"]= range(1,page_number+1)
    return render(request, "activities/otherActivities.html", context)

def visit_by_lieu(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

   
    if is_ajax:
        if request.method == 'GET':
            tab = []
           
            lieu_id = request.GET.get('lieu_id','')
            id_visit_type = request.GET.get('id_visit_type','')
            visits = get_list_or_404(Visit, idlocation=lieu_id, idactivity__idtypesubactivity=id_visit_type)
            lieu = get_object_or_404(Location, pk = lieu_id)
            
            for visit in visits:
                dict = {}
                dict['activity']=serializers.serialize('json', [visit.idactivity])
                dict['visit']= serializers.serialize('json', [ visit])
                dict['images']= serializers.serialize('json',Activityimage.objects.filter(idactivity=visit.idactivity_id))
                dict['fs']=serializers.serialize('json',Intervenantfieldschool.objects.filter(id=visit.id))
               
                tab.append(dict)

            lieu_serialize =  serializers.serialize('json', [ lieu])
            return  JsonResponse({'visits': tab, 'lieu': lieu_serialize})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

def support(request):
    context = {
        "types_activity": type_activity,
        "types_pub": type_pub,
        }
    partner_list = Partner.objects.filter(isLink=False)
    context["partner_list"]= partner_list
    
    return render(request, "activities/support.html", context)

def atlas(request):
    context = {
        "types_activity": type_activity,
        "types_pub": type_pub,
        }
    return render(request, "activities/atlas.html", context)


def activityDetail(request,slug):
    context = {
        "types_activity": type_activity,
        "types_pub": type_pub,
        }

    activity = get_object_or_404(Activity, slug = slug)

    typeactivity= activity.idtypeactivity
    if typeactivity.id=='A1':
        return redirect('activities:index')

    new_events = Activity.objects.filter(Q(idtypeactivity = activity.idtypeactivity_id), Q(date__year__gte = (date.today()-timedelta(days=365)).year) & Q(date__lte = date.today()))    

    context["activity"]= activity
    context["images"]=activity.activityimage_set.all()
    context["new_events"] = new_events
    return render(request, "activities/activityDetail.html", context)

def collection(request,salle=''):
    context = {
        "types_activity": type_activity,
        "types_pub": type_pub,
        }
    context['salle']=salle
    return render(request, "activities/collection.html",context)

def ajaxActivityDetail(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'GET':
           
            id = request.GET.get('id','')
            activity = get_object_or_404(Activity, pk = id)
            activity_serialize = serializers.serialize('json',[activity])
            response = {
                'activity': activity_serialize
            }
            images= Activityimage.objects.filter(idactivity=activity.id)
            if len(images)>0:
                response['images'] = serializers.serialize('json',images)
        
            authorsactivity= Activityperson.objects.filter(idactivity=activity.id)
            authors=[]
            if len(authorsactivity)>0:
                for author in authorsactivity:
                    authors.append(Person.objects.get(pk=author.idperson_id))
                response['authors']=serializers.serialize('json',authors)

            if activity.idtypeactivity_id == "A1":
                visite = Visit.objects.get(idactivity=activity.id)
                lieu = Location.objects.get(pk = visite.idlocation_id)
                response['lieu'] =  serializers.serialize('json', [ lieu])
                
            return  JsonResponse(response)
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')
