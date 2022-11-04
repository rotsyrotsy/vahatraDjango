from django.shortcuts import get_object_or_404, render,redirect
from association.models import  Image, Imagetype,  Messageofyear, Typemember, Member
from django.db.models import Q
from activities.models import Activity, Typeactivity
from publications.models import Typepublication,Publication
from datetime import date,timedelta
from vahatraDjango.functions import   pagination, toSlug
from django.conf import settings
from django.core.mail import EmailMultiAlternatives
import imaplib, time
from django.core.cache import cache
from django.views.decorators.cache import cache_page

TYPES_ACTIVITY="Typeactivity.all"
TYPES_PUB="Typepublication.all"
def getContext():
    types_activity = cache.get(TYPES_ACTIVITY)
    types_pub = cache.get(TYPES_PUB)
    if not types_activity:
        types_activity = Typeactivity.objects.filter(~Q(id='A4')).order_by("type")
        cache.set(TYPES_ACTIVITY, types_activity)
    if not types_pub:
        types_pub = Typepublication.objects.all().order_by("id")
        cache.set(TYPES_ACTIVITY, types_pub)

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

@cache_page(60*60)
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

    context["type"]= type
    context["page_number"]= range(1,page_number+1)
    

    return render(request, "association/members.html", context)

def contact(request):
    context = getContext()
    if request.method == "POST":
        message_name = request.POST['message-name']
        message_phone = request.POST['message-phone']
        message_email = request.POST['message-email']
        message_subject = request.POST['message-subject']
        message_content = request.POST['message-content']

        
        from_email = settings.DEFAULT_FROM_EMAIL
        to = [message_email]
        text_content = 'Thank you, we have received  your email and will answer soon.Here is your message:'+message_content+'.'
        html_content = '<p>Bonjour '+message_name+',</p>\
            <p>Merci, nous avons bien reçu votre mail et un responsable va vous répondre bientôt.</p>\
                <p>Voici votre message:<br> <strong>"'+message_content+'"</strong></p>\
                    <p>Cordialement,</p>\
                    <span style="color:#d1ad3c;font-style:italic;">Association Vahatra<br>\
                    associatvahatra@moov.mg<br>\
                    20 22 277 55</span>'
        msg = EmailMultiAlternatives(message_subject, text_content, from_email, to)
        msg.attach_alternative(html_content, "text/html")
        msg.send()


        messageSent = str(msg.message())

        ## IMAPLIB DE SENDGRID NE MARCHE PAS
        imap = imaplib.IMAP4_SSL(settings.EMAIL_HOST, 993)
        imap.login(settings.EMAIL_HOST_USER, settings.EMAIL_HOST_PASSWORD)
        imap.append('INBOX.Sent', '\\Seen', imaplib.Time2Internaldate(time.time()), messageSent.encode())
        imap.logout()

        context["message_name"]= message_name
        return render(request, "association/contact.html",context)
    else:
        if request.method == 'GET' and 'email' in request.GET:
            email = request.GET["email"]
            context["email"]= email
    
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