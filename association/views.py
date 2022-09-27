from math import ceil
from django.shortcuts import get_object_or_404, render
from association.models import  Image, Imagetype,  Messageofyear, Typemember, Member,Partner,Person
from django.core.mail import send_mail
from django.db.models import Q
from activities.models import Activity, Typesubactivity
from publications.models import Typepublication,Publication,Publicationauthor
from datetime import date,timedelta
from django.urls import reverse
from django.http import HttpResponseRedirect

from vahatraDjango.functions import pagination



# Create your views here.
type_visit = Typesubactivity.objects.all()
type_pub = Typepublication.objects.all


def index(request):
    context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }
    type_member_list = Typemember.objects.all
    partner_list = Partner.objects.filter(isLink=False)
    links_list = Partner.objects.filter(isLink=True)
    message_of_year = Messageofyear.objects.order_by('year')[0]
    
    upcoming_events = Activity.objects.filter(date__gte=date.today())

    upcoming_publications = Publication.objects.filter(date__gt=date.today())
    new_pubs = Publication.objects.filter( Q(date__year__gte = (date.today()-timedelta(days=365)).year) & Q(date__lte = date.today()))
    new_events = Activity.objects.filter( Q(date__year__gte = (date.today()-timedelta(days=365)).year) & Q(date__lte = date.today()))
    

    context["type_member_list"]= type_member_list
    context["message_of_year"]= message_of_year
    context["partner_list"]= partner_list
    context["links_list"]=links_list
    context["upcoming_events"]= upcoming_events
    context["upcoming_publications"]= upcoming_publications
    context["new_pubs"] = new_pubs
    context["new_events"] = new_events

    
    return render(request, "association/index.html", context)

def contactpage(request):
    context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }
    if request.method == 'GET' and 'email' in request.GET:
        email = request.GET["email"]
        context["email"]= email
        return render(request, "association/contact.html", context)
    return render(request, "association/contact.html",context)
    
def member(request, type_member_id, page=1):
    context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }
    type = get_object_or_404(Typemember, pk = type_member_id)
    rangenumber=4
    if type_member_id==3:
        rangenumber=10
    
    list =  Member.objects.filter(idtypemember=type.id)
    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, rangenumber, 'id')
        page_number = dictpagination['page_number']
        members = dictpagination['list']
        context["members"] = members

    context["members"]= members
    context["type"]= type
    context["page_number"]= range(1,page_number+1)
    return render(request, "association/members.html", context)
    
def contact(request):
    context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }
    if request.method == "POST":
        message_name = request.POST['message-name']
        message_phone = request.POST['message-phone']
        message_email = request.POST['message-email']
        message_subject = request.POST['message-subject']
        message_content = request.POST['message-content']

        send_mail(
            message_subject, # subject
            message_content, #content
            message_email, #from email
            ['rafa.rotsy@gmail.com'], # to
        )
        context["message_name"]= message_name
        return render(request, "association/contact.html",context)
    else:
        return render(request, "association/contact.html",context)

def financing(request):
    context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }
    return render(request, "association/financing.html",context)

    
def gallery(request):
    context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }
    context["typeimage"] = Imagetype.objects.all()
    context["images"]=Image.objects.all().order_by('name')
    return render(request, "association/gallery.html",context)

def searchMember(request,type_member_id,keyword=None,page=1):
    context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }
    
    type = get_object_or_404(Typemember, pk = type_member_id)

    if keyword is None:
        if keyword in request.GET and request.GET['keyword']=="":
            return HttpResponseRedirect(reverse('association:member', args=(type_member_id,)))
        keyword = request.GET['keyword']
    
    rangenumber=4
    if type_member_id==3:
        rangenumber=10

    list =  Member.objects.filter(idtypemember=type.id)
    list = list.filter(Q(idperson__name__icontains=keyword)|
        Q(idperson__username__icontains=keyword))
    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, rangenumber, 'id')
        page_number = dictpagination['page_number']
        members = dictpagination['list']
        context["members"] = members

    context["type"]= type
    context["page_number"]= range(1,page_number+1)
    context['keyword']=keyword

    return render(request, "association/members.html", context)

