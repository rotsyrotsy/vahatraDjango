from math import ceil
from django.shortcuts import get_object_or_404, render
from association.models import  Image, Imagetype,  Messageofyear, Typemember, Member,Partner,Person
from django.core.mail import send_mail
from django.db.models.functions import  Substr
from django.db.models import IntegerField, F,Q
from activities.models import Activity, Typesubactivity
from publications.models import Typepublication,Publication,Publicationauthor
from datetime import date,timedelta



# Create your views here.
type_visit = Typesubactivity.objects.all()
type_pub = Typepublication.objects.all
context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }

def index(request):
    type_member_list = Typemember.objects.all
    partner_list = Partner.objects.all()
    message_of_year = Messageofyear.objects.order_by('year')[0]
    
    upcoming_events = Activity.objects.filter(date__gte=date.today())

    upcoming_publications = Publication.objects.filter(date__gt=date.today())
    new_pubs = Publication.objects.filter( Q(date__year__gte = (date.today()-timedelta(days=365)).year) & Q(date__lte = date.today()))
    new_events = Activity.objects.filter( Q(date__year__gte = (date.today()-timedelta(days=365)).year) & Q(date__lte = date.today()))
    

    context["type_member_list"]= type_member_list
    context["message_of_year"]= message_of_year
    context["partner_list"]= partner_list
    context["upcoming_events"]= upcoming_events
    context["upcoming_publications"]= upcoming_publications
    context["new_pubs"] = new_pubs
    context["new_events"] = new_events

    
    return render(request, "association/index.html", context)

def contactpage(request):
    if request.method == 'GET' and 'email' in request.GET:
        email = request.GET["email"]
        context["email"]= email
        return render(request, "association/contact.html", context)
    return render(request, "association/contact.html",context)
    
def member(request, type_member_id, page=1):
    type = get_object_or_404(Typemember, pk = type_member_id)

    page -= 1
    page_number = Member.objects.filter(idtypemember=type.id).count()
    page_number = ceil(page_number/4)

    members = Member.objects.filter(idtypemember=type.id).order_by(
        'id'
    )[(page*4):((page*4)+4)]

    context["members"]= members
    context["type"]= type
    context["page_number"]= range(1,page_number+1)
    return render(request, "association/members.html", context)
    
def contact(request):
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
    return render(request, "association/financing.html",context)

    
def gallery(request):
    context["typeimage"] = Imagetype.objects.filter(~Q(id=8) & ~Q(id=9))
    context["images"]=Image.objects.filter(~Q(idtype=8) & ~Q(idtype=9))
    return render(request, "association/gallery.html",context)

def customhandler404(request, exception):
    response = render(request, 'association/404.html')
    response.status_code = 404
    return response