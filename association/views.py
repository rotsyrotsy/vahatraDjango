from math import ceil
from django.shortcuts import get_object_or_404, render
from association.models import  Memberviewposts, Messageofyear, Typemember, Member,Partner,Person
from django.core.mail import send_mail
from django.db.models.functions import  Substr
from django.db.models import IntegerField, F,Q
from activities.models import Typevisite, Visite,Recherche,Seminaire
from publications.models import Typepublication,Publication,Publicationauthor
from datetime import date,timedelta



# Create your views here.
type_visit = Typevisite.objects.all
type_pub = Typepublication.objects.all
context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }

def index(request):
    type_member_list = Typemember.objects.all
    partner_list = Partner.objects.all()
    message_of_year = Messageofyear.objects.order_by('year')[0]
    
    upcoming_visits = Visite.objects.filter(date__gte=date.today())
    upcoming_researches = Recherche.objects.filter(date__gte=date.today())
    upcoming_conferences = Seminaire.objects.filter(date__gte=date.today())

    upcoming_publications = []
    dict = {}
    pubs = Publication.objects.filter(year__gt=date.today().year)
    new_pubs = Publication.objects.filter( Q(year =date.today().year) | Q(year = date.today().year -1))
    new_visits = Visite.objects.filter( Q(date__gt = date.today()-timedelta(days=365)) & Q(date__lte = date.today()))
    new_researches = Recherche.objects.filter(Q(date__gt = date.today()-timedelta(days=365)) & Q(date__lte = date.today()))
    new_conferences = Seminaire.objects.filter(Q(date__gt = date.today()-timedelta(days=365)) & Q(date__lte = date.today()))
    for pub in pubs:
        dict['publication']=pub
        dict['authors']=Publicationauthor.objects.filter(idpublication = pub.id)
        upcoming_publications.append(dict)
    

    context["type_member_list"]= type_member_list
    context["message_of_year"]= message_of_year
    context["partner_list"]= partner_list
    context["upcoming_visits"]= upcoming_visits
    context["upcoming_researches"]= upcoming_researches
    context["upcoming_publications"]= upcoming_publications
    context["upcoming_conferences"]=upcoming_conferences
    context["new_pubs"] = new_pubs
    context["new_visits"] = new_visits
    context["new_conferences"] = new_conferences
    context["new_researches"] = new_researches

    print(upcoming_publications[0]['publication'])
    
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

    members = Memberviewposts.objects.filter(idtypemember=type.id).annotate(
        range=Substr(F('id'),2)
    ).order_by(
        Cast(F('range'),IntegerField())
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

    
def portfolio(request):
    return render(request, "association/portfolio.html",context)
