from django.shortcuts import get_object_or_404, render,redirect
from association.models import  Image, Imagetype,  Messageofyear, Typemember, Member, Report
from django.db.models import Q, Min, Max
from activities.models import Activity, Typeactivity
from publications.models import Typepublication,Publication
from datetime import date,timedelta
from vahatraDjango.functions import   pagination, toSlug, is_validate_phone_number,check_email
from django.conf import settings
from django.core.mail import EmailMultiAlternatives
from django.core.cache import cache
from django.views.decorators.cache import cache_page
from django.template.loader import render_to_string
import datetime

TYPES_ACTIVITY="Typeactivity.all"
TYPES_PUB="Typepublication.all"
def getContext():
    types_activity = cache.get(TYPES_ACTIVITY)
    types_pub = cache.get(TYPES_PUB)
    if not types_activity:
        types_activity = Typeactivity.objects.filter(~Q(id=3)).order_by("type")
        cache.set(TYPES_ACTIVITY, types_activity)
    if not types_pub:
        types_pub = Typepublication.objects.all().order_by("id")
        cache.set(TYPES_PUB, types_pub)

    context={
        "types_activity": cache.get(TYPES_ACTIVITY),
        "types_pub": cache.get(TYPES_PUB),
    }
    return context

@cache_page(60*60)
def index(request):

    context = getContext()
    
    new_pubs = Publication.objects.filter( Q(date__month__gte = (date.today()-timedelta(days=100)).month),
    Q(date__year__gte = (date.today()-timedelta(days=100)).year), 
    Q(date__lte = date.today())).order_by('-date')

    new_events = Activity.objects.filter( Q(date__month__gte = (date.today()-timedelta(days=100)).month), 
    Q(date__lte = date.today()),
    Q(date__year__gte = (date.today()-timedelta(days=100)).year)).order_by('-date')

    context["type_member_list"]= Typemember.objects.all
    context["message_of_year"]= Messageofyear.objects.order_by('year')[0]
    context["upcoming_events"]= Activity.objects.filter(date__gt=date.today())
    context["upcoming_publications"]= Publication.objects.filter(date__gt=date.today())
    context["new_pubs"] = new_pubs
    context["new_events"] = new_events
    
    return render(request, "association/index.html", context)

def member(request,type_member_name=None, type_member_id=None,keyword=None, page=1):
    context = getContext()
    type = get_object_or_404(Typemember, pk = type_member_id)

    slug = toSlug(type.type)
    if type_member_name!=slug:
        return redirect('association:member', type_member_id=type.id, type_member_name=slug)
    
    rangenumber=4
    if type.id==3:
        rangenumber=10
    
    list =  Member.objects.filter(idtypemember=type.id)
    
    if keyword is None:
        if 'keyword' in request.GET:
            if request.GET['keyword']=="":
                return redirect('association:member', type_member_id=type.id, type_member_name=slug)
            keyword = request.GET['keyword']
            context['keyword']=keyword
            list = list.filter(Q(idperson__name__icontains=keyword)|
                Q(idperson__username__icontains=keyword))
    else:
        context['keyword']=keyword
        list = list.filter(Q(idperson__name__icontains=keyword)|
                Q(idperson__username__icontains=keyword))
    
    list.distinct()

    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, rangenumber, 'id')
        page_number = dictpagination['page_number']
        members = dictpagination['list']
        context["members"] = members
        print(page_number)
    context["type"]= type
    context["page_number"]= range(1,page_number+1)
    

    return render(request, "association/members.html", context)

def contact(request):
    import json
    import flag
    context = getContext()
    
    
    with open('countryPhoneCodes.json') as json_file:
        data = json.load(json_file)
        for item in data:
            item['flag']=flag.flag(item['code'])
        context['country']=data

    if request.POST:
        message_name = request.POST['message_name']
        message_phone = request.POST['dial_code']+request.POST['message_phone']
        message_email = request.POST['message_email']
        message_subject = request.POST['message_subject']
        message_content = request.POST['message_content']
        context['data']=request.POST
        print(request.POST)
        
        merge_data = {
            'message_content': message_content,
            'message_email': message_email,
            'message_subject': message_subject,
            'datetime' : datetime.datetime.now()
        }

        if request.POST['message_phone']!="":
            merge_data['message_phone']=message_phone
            if not is_validate_phone_number(message_phone):
                context["number_error"]= 'Your phone number is invalidate, please verify it.'
                return render(request, "association/contact.html",context)
        if not check_email(message_email):
            context["email_error"]= 'Your email address is invalidate, please verify it.'
            return render(request, "association/contact.html",context)

        from_email = settings.DEFAULT_FROM_EMAIL
        to = [settings.DEFAULT_FROM_EMAIL]
        text_content = message_content
        html_body = render_to_string("association/message_body.html", merge_data)
        msg = EmailMultiAlternatives(message_subject, text_content, from_email, to)
        msg.attach_alternative(html_body, "text/html")
        msg.send()
        context['success']=1
        return render(request, "association/contact.html",context)
    else:
        if request.method == 'GET' and 'email' in request.GET:
            email = request.GET["email"]
            context["message_email"]= email
    
    return render(request, "association/contact.html",context)

@cache_page(60*60*24)
def financing(request):
    context = getContext()
    return render(request, "association/financing.html",context)

@cache_page(60*60)
def gallery(request,limit=9):
    context = getContext()
    limit = int(limit)
    
    context["typeimage"] = Imagetype.objects.all()
    allImages = Image.objects.all().order_by('name')
    length = allImages.count()

    if limit> length:
        return redirect('association:gallery', limit=length)

    context["images"]=allImages[:limit]
    context['length']=allImages.count()
    context['limit']=limit

    return render(request, "association/gallery.html",context)

@cache_page(60*60)
def reports(request, year=None, page=1):
    context = getContext()
    list = Report.objects.all()
    min =list.aggregate(Min('year'))
    max = list.aggregate(Max('year'))
    context["years"] = range(min['year__min'], max['year__max']+1)
    if year:
        list = list.filter(year=year)
        context['theyear']=year
    
    rangenumber=5
    if (list.count() > 0):
        dictpagination = pagination(page, list, rangenumber, '-year')
        page_number = dictpagination['page_number']
        reports = dictpagination['list']
        context["reports"] = reports

    context["type"]= type
    context["page_number"]= range(1,page_number+1)

    return render(request, "association/annualreports.html",context)
