from django.utils import timezone,translation
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.http import HttpResponseRedirect, JsonResponse, HttpResponseBadRequest
from activities.models import Activity, Activityimage, Activityperson, Fieldschool, Typeactivity, Activityinstitution, Visit, Typesubactivity, Location
from django.shortcuts import render
from django.core.mail import EmailMultiAlternatives
from django.db.models import Min, Max,Q, Count
from django.db import IntegrityError
from sequences import get_next_value
from association.models import Report, Department, Image, Imagetype, Institution, Member, Memberpostinst, Partner, Person, Post, Typemember, Typememberimage, Messageofyear
from publications.models import Publication, Publicationauthor, Publicationdetail, Typepublication
from datetime import date,timedelta
from django.core.files.images import get_image_dimensions
from django.core.exceptions import PermissionDenied
from vahatraDjango.functions import *
from django.contrib.auth import authenticate,login,logout
from django.conf import settings
from django.contrib.auth.models import User
import operator
import itertools
import math
from django.core import serializers

def setAttributeByRequestParams(request,params,model):
    values = [request.POST.get(p) for p in params]
    i = 0
    for value in values:
        if value != "":
            current = params[i]+'_'+translation.get_language()
            for code,lang in settings.LANGUAGES:
                other = params[i]+'_'+code
                if hasattr(model,other):
                    if current != other:
                        setattr(model, other, value.strip())
            setattr(model, params[i], value.strip())
        i += 1

def updateAttributeByRequestParams(request,params,model):
    countChange = 0
    values = [request.POST.get(p) for p in params]
    i = 0
    for value in values:
        # if getattr(model, params[i]) is None or value != str(getattr(model, params[i])):
        if value == "":
            value = None
        else:
            value = value.strip()
        setattr(model, params[i], value)
        countChange += 1
        i += 1
    return countChange

def getContext():
    context = {
        "type_publication": Typepublication.objects.all(),
        "type_activity": Typeactivity.objects.all(),
        "type_member": Typemember.objects.all(),
    }
    return context

def checkIfAdmin(request):
    if not request.user.is_authenticated: raise PermissionDenied()
    if 'count_login' in request.session:
        if request.session['count_login'] > 3:
            request.session['count_login'] += 1
            return render(
                request,
                "admin/login.html",
                {
                    "block_message": "You have exceeded the number of connection attempts.",
                },
            )

def my_login(request):
    if 'count_login' in request.session:
        if request.session['count_login'] > 3:
            # si l'authentification est invalide plus de 3 fois
            if request.session['count_login']==4:
                admin = User.objects.all()[0]
                from_email = settings.DEFAULT_FROM_EMAIL
                to = [admin.email]
                text_content = 'Tentative de connexion suspecte bloquée'
                html_content = '<p>Quelqu\'un vient d\'essayer de se connecter au compte administrateur de votre site de l\'Association Vahatra.\
                        Si c\'était vous, veuillez <a href="http://127.0.0.1:8000/en/admin/reset_password_verify/'+admin.email+'">suivre ce lien</a></p>\
                            <span style="color:#d1ad3c;font-style:italic;">Association Vahatra<br>\
                            associatvahatra@moov.mg<br>\
                            20 22 277 55</span>'
                msg = EmailMultiAlternatives('Tentative de connexion suspecte bloquée', text_content, from_email, to)
                msg.attach_alternative(html_content, "text/html")
                msg.send()
            request.session['count_login'] += 1
            return render(
                request,
                "admin/login.html",
                {
                    "block_message": "You have exceeded the number of connection attempts.",
                },
            )
        
    if request.method == 'POST':
        if 'count_login' not in request.session:
            request.session['count_login']=1
        
        admin = authenticate(request,username=request.POST["username"],password=request.POST['password'])
        if admin is not None:
            try:
                del request.session['count_login']
            except KeyError:
                pass
            login(request,admin)
            if len(request.POST.getlist("remember_me")) == 0:
                request.session.set_expiry(0)
            return HttpResponseRedirect(reverse("admin:index"))
        else:
            request.session['count_login'] += 1
            return render(
                request,
                "admin/login.html",
                {
                    "error_message": "Verify your username and password.",
                },
            )
    return render(request, "admin/login.html")


def my_logout(request):
    checkIfAdmin(request)
    try:
        logout(request)
    except KeyError:
        pass
    return render(request, "admin/login.html", {"message": "You're logged out"})

def reset_password_verify(request,mail=None):
    admin = None
    if request.method == 'POST':
        if 'code' in request.POST:
            checkCode = str(request.POST["checkCode"])
            code = str(request.POST["code"])
            if code == checkCode:
                return render(request, "admin/reset_password.html", {"message":"Now, enter a new password"})
            else:
                return render(
                    request,
                    "admin/reset_password_verify.html",
                    {
                        "checkCode" : checkCode,
                        "error_message": "Your code is invalidate.",
                    },
                )

        if "mail" in request.POST:
            mail = request.POST["mail"]
    
    if mail is not None:
        try:
            admin = User.objects.get(email = mail)
            request.session['admin_account_id']=admin.id
        except (KeyError, User.DoesNotExist):
            return render(
                request,
                "admin/reset_password_verify.html",
                {
                    "error_message": "There is no account related to this email. Verify your input.",
                },
            )
        else:
            ## GENERATE CODE 
            checkCode = get_random_code(6)
            
            from_email = settings.DEFAULT_FROM_EMAIL
            to = [admin.email]
            text_content = 'Changement de mot de passe administrateur'
            html_content = '<p>Bonjour,</p>\
                <p>Voici votre code de confirmation de changement de mot de passe: \
                    <strong>'+checkCode+'</strong></p>\
                        <span style="color:#d1ad3c;font-style:italic;">Association Vahatra<br>\
                        associatvahatra@moov.mg<br>\
                        20 22 277 55</span>'
            msg = EmailMultiAlternatives('Changement de mot de passe de Vahatra', text_content, from_email, to)
            msg.attach_alternative(html_content, "text/html")
            msg.send()


            return render(request, "admin/reset_password_verify.html", {"message": "Check your mail and enter the code we've sent to you.", "checkCode":checkCode})
            
    return render(request, "admin/reset_password_verify.html")


def reset_password(request):
    if request.method == 'POST':
        admin = User.objects.get(pk = request.session['admin_account_id'])
        password = str(request.POST["password"])
        if validPassword(password)==False:
            return render(request, "admin/reset_password.html",{"error_message":"Password must contains 8 characters minimum,\
    at least 1 number or digit between [0-9],at least 1 special character and\
    at least one alphabet should be of Upper Case."})
        else:
            admin.set_password(password)
            admin.save()
            try:
                del request.session['count_login']
                del request.session['admin_account_id']
            except KeyError:
                pass
            return render(request, "admin/login.html",{"message":"Your password has been changed successfully."})
    return render(request, "admin/reset_password_verify.html")


def ajaxDelete(request,themodel,modelname,imgs=None,path=None):
    checkIfAdmin(request)
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'POST':
            try:
                if imgs and path:
                    if type(imgs) is str:
                        delete_file(imgs, path)
                    else:
                        for img in imgs:
                            if img is not None:
                                delete_file(img, path)
                themodel.delete()
            except KeyError:
                return HttpResponseBadRequest('Error')
            else:
                return JsonResponse({'success': modelname+' successfully deleted.'})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')


def index(request):
    context = getContext()
    context['message_of_year']=Messageofyear.objects.order_by('year')[0]
    checkIfAdmin(request)
    return render(request, "admin/index.html", context)

#  -----------------------------------ACTIVITIES ---------------------------------

def listActivities(request, activity_id="A1", page=1, subactivity_id=None, year=None):
    checkIfAdmin(request)
    context = getContext()

    type = get_object_or_404(Typeactivity, pk=activity_id)
    context["type"] = type

    list = Activity.objects.filter(idtypeactivity_id=type.id)
    if subactivity_id is not None:
        subactivity = get_object_or_404(Typesubactivity,pk=subactivity_id)
        list = list.filter(idtypesubactivity_id = subactivity.id)
        if year is not None:
            list = list.filter(date__year=year)
            context["year"] = year
        context["subactivity"] = subactivity
    else:
        if year is not None:
            list = list.filter(date__year=year)
            context["year"] = year

    if request.method == 'GET':
        if 'keyword' in request.GET:
            keyword = request.GET['keyword']
        
            try:
                year = int(keyword)
                list = list.filter(date__year=year)
            except ValueError:
                list = list.filter(Q(title__icontains=keyword)|
                Q(visit__idlocation__name__icontains = keyword)|
                Q(activityinstitution__idinst__name__icontains = keyword)|
                Q(activityperson__idperson__name__icontains = keyword)|
                Q(activityperson__idperson__username__icontains = keyword))
                list = list.distinct()

            context['keyword']=keyword
    
    list = list.order_by('date')

    if 'keyword' not in context:
        page_number=0
        if (list.count() > 0):
            dictpagination = pagination(page, list, 8, '-date')
            page_number = dictpagination['page_number']
            activities = dictpagination['list']
            context["activities"] = activities
            context["page_number"] = range(1, page_number+1)
    else:
        context['activities']=list

    if list.count()>0:
        min = Activity.objects.filter(
            idtypeactivity=activity_id).aggregate(Min('date'))
        max = Activity.objects.filter(
            idtypeactivity=activity_id).aggregate(Max('date'))
        context["years"] = reversed(range(min['date__min'].year, max['date__max'].year+1))
    else:
        context["years"] =reversed(range(timezone.now().year,timezone.now().year))
    

    return render(request, "admin/listActivities.html", context)

def deleteActivity(request):
    id_activity = request.POST.get('id_activity', '')
    activity = Activity.objects.get(pk=id_activity)
    return ajaxDelete(request,activity,'Activity',activity.activityimage_set.all().values_list('image',flat=True),'images/site/'+renameFile(activity.idtypeactivity.type))
    
def addActivity(request, idtypeactivity='A1'):
    checkIfAdmin(request)
    context = getContext()

    type = get_object_or_404(Typeactivity, pk=idtypeactivity)
    context["type"] = type
    context["persons"] = Person.objects.filter(~Q(member__idtypemember=4)).order_by('name')
    context["institutions"] = Institution.objects.all().order_by('name')
    context["departments"] = Department.objects.all().order_by('name')
    context["locations"] = Location.objects.all().order_by('name')
    context["type_subactivity"] = type.typesubactivity_set.all().order_by('type')
    steps=3
    if idtypeactivity=='A1':
        steps=4
    context['step_number']=range(0,steps)
    

    if request.method == 'POST':
        if request.POST['idtypeactivity'] == "" or request.POST['title'] == "":
            context["error"] = "Fields 'Type of activity' and 'Title' are required."
            return render(request, "admin/addActivity.html", context)

        typeactivity = Typeactivity.objects.get(
            pk=request.POST['idtypeactivity'])
        context["type"] = typeactivity
        
        typesubactivity=None
        if 'idtypesubactivity' in request.POST:
            typesubactivity = Typesubactivity.objects.get(pk=request.POST['idtypesubactivity'])


        if request.POST['idtypeactivity'] == 'A1':
            if request.POST['idlocation'] == "" or request.POST['idtypesubactivity'] == "":
                context["error"] = "Fields 'Type of visit' and 'Location' are required."
                return render(request, "admin/addActivity.html", context)

        activity = Activity(idtypeactivity=typeactivity,
                            idtypesubactivity = typesubactivity)

        names = ['title','description', 'date', 'note']
        setAttributeByRequestParams(request,names, activity)
        

        activity.save()

        lastActivity = Activity.objects.last()


        data = request.POST.items()
        for keys, values in data:
            if values!="":
                if 'fkidperson' in keys:
                    actpers = Activityperson(
                        idactivity=lastActivity, idperson=Person.objects.get(pk=values))
                    actpers.save()
                if 'fkidinst' in keys:
                    actpers = Activityinstitution(
                        idactivity=lastActivity, idinst=Institution.objects.get(pk=values))
                    actpers.save()

        if request.FILES:
            files = request.FILES.getlist('files')
            for f in files:
                image = Activityimage(idactivity=lastActivity)
                image.image = handle_uploaded_file(f, 'images/site/'+renameFile(lastActivity.idtypeactivity.type_en))
                image.save()

        if request.POST['idtypeactivity'] == 'A1':  # if activity is visit
            visit = Visit(idactivity=lastActivity, idlocation=Location.objects.get(
                pk=request.POST['idlocation']))
            if (request.POST['dateend'] != ""):
                visit.dateend = request.POST['dateend']
            visit.save()
            if visit.idactivity.idtypesubactivity.id == 'SA2':  # if field school
                fsnumber = 0
                data = request.POST.items()
                for keys, values in data:
                    if 'fsidinst' in keys or 'fsiddept' in keys:
                        fsnumber += 1

                fsnumber = int(fsnumber/2)
                for i in range(0, fsnumber):
                    fs = Fieldschool(idvisit=Visit.objects.last())
                    valueInst = request.POST.get('fsidinst'+str(i))
                    valueDept = request.POST.get('fsiddept'+str(i))
                    if valueInst != "":
                        setattr(fs, 'idinst',
                                Institution.objects.get(pk=valueInst))
                    if valueDept != "":
                        setattr(fs, 'iddept',
                                Department.objects.get(pk=valueDept))
                    fs.save()
            
            
        lastActivity.slug = unique_slug_generator(lastActivity)
        lastActivity.save()

        context["success"] = "New "+typeactivity.type+" inserted successfully."

    return render(request, "admin/addActivity.html", context)


def addPerson(request):
    checkIfAdmin(request)

    context = getContext()

    if request.method == "GET":
        if 'keyword' in request.GET:
            keyword = request.GET['keyword']
            persons = Person.objects.filter(Q(name__icontains=keyword)|
            Q(username__icontains = keyword))
            persons = persons.distinct()
            context['persons']=persons
            context['keyword']=keyword
            
    if request.method == 'POST':
        person = Person.objects.filter(Q(name=str(request.POST['name']).strip()), Q(username=str(request.POST['username']).strip()))
        if person.count()>0:
            context["warning"] = "This person is already registered."
        else:
            person = Person(name=request.POST['name'].strip(), username=request.POST['username'].strip())
            if request.POST['title']!="":
                person.title = request.POST['title']
            person.save()
            context["success"] = "New person inserted successfully."
    return render(request, "admin/addPerson.html", context)

def deletePerson(request):
    id_person = request.POST.get('id_person', '')
    person = Person.objects.get(pk=id_person)
    return ajaxDelete(request,person,'Person')
    
def addInstitution(request):
    checkIfAdmin(request)

    context = getContext()
    if request.method == 'POST':
        inst = Institution.objects.filter(Q(name=str(request.POST['name'])))
        if inst.count()>0:
            context["warning"] = "This institution is already registered."
        else:
            nextId = get_next_value("institution")
            nextId = "I"+str(nextId)
            inst = Institution(id=nextId, name=request.POST['name'])
            inst.save()
            context["success"] = "New institution inserted successfully."
    return render(request, "admin/addInstitution.html", context)


def addLocation(request):
    checkIfAdmin(request)

    context = getContext()
    if request.method == 'POST':
        if request.POST['name'] == "" or request.POST['longitude'] == "" or request.POST['latitude'] == "":
            context["error"] = "All fields are required."
            return render(request, "admin/addLocation.html", context)
        
        location = Location.objects.filter(Q(name=str(request.POST['name'])))
        if location.count()>0:
            context["warning"] = "This location is already registered."
        else:
            location = Location(
                name=request.POST['name'], longitude=request.POST['longitude'], latitude=request.POST['latitude'])
            location.save()
            context["success"] = "New location inserted successfully."
    return render(request, "admin/addLocation.html", context)


def updateActivity(request, activity_id=1):
    checkIfAdmin(request)

    context = getContext()

    activity = get_object_or_404(Activity, pk=activity_id)
    context["activity"] = activity
    context["persons"] = Person.objects.filter(~Q(member__idtypemember=4)).order_by('name')
    context["institutions"] = Institution.objects.all().order_by('name')
    context["departments"] = Department.objects.all().order_by('name')
    context["locations"] = Location.objects.all().order_by('name')
    context["type_subactivity"] = activity.idtypeactivity.typesubactivity_set.all().order_by('type')

    visit = None
    if activity.visit_set.all():
        visit = activity.visit_set.get()
        context['visit'] = visit
        if visit.fieldschool_set.all():
            context['fieldschool'] = visit.fieldschool_set.all()

    countChange = 0
    countChangeActivity = 0
    if request.method == 'POST':
        if activity.idtypeactivity is None or request.POST['idtypeactivity'] != activity.idtypeactivity.id :
            activity.idtypeactivity = Typeactivity.objects.get(
                pk=request.POST['idtypeactivity'])
            countChangeActivity += 1

        if 'idtypesubactivity' in request.POST:
            if activity.idtypesubactivity is None or request.POST['idtypesubactivity'] != activity.idtypesubactivity.id  :
                activity.idtypesubactivity = Typesubactivity.objects.get(
                    pk=request.POST['idtypesubactivity'])
                countChangeActivity += 1

        params = ['title', 'description', 'date', 'note']
        countChangeActivity += updateAttributeByRequestParams(request,params, activity)

        if activity.slug is not None and request.POST['slug']!=activity.slug:
            activity.slug = unique_slug_generator(activity,request.POST['slug'])
            countChangeActivity += 1
        else :
            activity.slug = unique_slug_generator(activity)
            countChangeActivity += 1
        
        if countChangeActivity > 0:
            countChange += 1
            activity.save()
            context["activity"] = activity

        if request.FILES:
            files = request.FILES.getlist('files')
            for f in files:
                activityimage = Activityimage(idactivity=activity)
                activityimage.image = handle_uploaded_file(f, 'images/site/'+renameFile(activity.idtypeactivity.type_en))
                activityimage.save()
            countChange += 1

        if len(request.POST.getlist("supprImage")) > 0:
            img_ids = request.POST.getlist("supprImage")
            for img_id in img_ids:
                activityimage = Activityimage.objects.get(pk=img_id)
                delete_file(activityimage.image, 'images/site/'+renameFile(activity.idtypeactivity.type))
                activityimage.delete()
            countChange += 1

        if len(request.POST.getlist("deletefs")) > 0:
            for id_fs in request.POST.getlist("deletefs"):
                fs = Fieldschool.objects.get(pk=id_fs)
                fs.delete()
            countChange += 1

        if len(request.POST.getlist("deletecollab")) > 0:
            for id_activityperson in request.POST.getlist("deletecollab"):
                ap = Activityperson.objects.get(pk=id_activityperson)
                ap.delete()
            countChange += 1

        if len(request.POST.getlist("deleteinst")) > 0:
            for id_activityinst in request.POST.getlist("deleteinst"):
                ai = Activityinstitution.objects.get(pk=id_activityinst)
                ai.delete()
            countChange += 1

        countChangeVisit = 0

        data = request.POST.items()
        for keys, values in data:
            if values!="":
                if 'fkidperson' in keys:
                    actpers = Activityperson(
                        idactivity=activity, idperson=Person.objects.get(pk=values))
                    actpers.save()
                if 'fkidinst' in keys:
                    actpers = Activityinstitution(
                        idactivity=activity, idinst=Institution.objects.get(pk=values))
                    actpers.save()

        if 'visit' in context:
            if visit.idlocation is None or request.POST['idlocation'] != str(visit.idlocation.id) :
                visit.idlocation = Location.objects.get(
                    pk=request.POST['idlocation'])
                countChangeVisit += 1
                countChange += 1

            if visit.dateend is None or request.POST['dateend'] != str(visit.dateend) :
                dateend = request.POST['dateend']
                if request.POST['dateend'] == "":
                    dateend = None
                visit.dateend = dateend
                countChangeVisit += 1
                countChange += 1

            if 'fieldschool' in context:
                fsnumber = 0
                data = request.POST.items()
                for keys, values in data:
                    if values!="":
                        if 'fsidinst' in keys or 'fsiddept' in keys:
                            fsnumber += 1

                fsnumber = int(fsnumber/2)
                for i in range(0, fsnumber):
                    fs = Fieldschool(idvisit=Visit.objects.last())
                    valueInst = request.POST.get('fsidinst'+str(i))
                    valueDept = request.POST.get('fsiddept'+str(i))
                    if valueInst != "":
                        # print('fsidinst'+str(i)+" = "+valueInst)
                        setattr(fs, 'idinst',
                                Institution.objects.get(pk=valueInst))
                    if valueDept != "":
                        # print('fsiddept'+str(i)+" = "+valueDept)
                        setattr(fs, 'iddept',
                                Department.objects.get(pk=valueDept))
                    fs.save()

        if countChangeVisit > 0:
            context['visit'] = visit
            visit.save()


        if countChange > 0:
            context["success"] = "Activity updated successfully."
        else:
            context["error"] = "There is nothing to change."

    return render(request, "admin/updateActivity.html", context)


# --------------------------- PUBLICATIONS ------------------------------

def listPublications(request, pub_id=1, page=1, year=None):
    checkIfAdmin(request)

    context = getContext()

    type = get_object_or_404(Typepublication, pk=pub_id)
    context["type"] = type

    list = Publication.objects.filter(idtype=pub_id)

    if year is not None:
        list = list.filter(date__year=year)
        context["year"] = year

    if request.method == 'GET':
        if 'keyword' in request.GET:
            keyword = request.GET['keyword']
        
            try:
                year = int(keyword)
                list = list.filter(date__year=year)
            except ValueError:
                list = list.filter(Q(title__icontains=keyword)|
                Q(publicationauthor__idperson__name__icontains = keyword)|
                Q(publicationauthor__idperson__username__icontains = keyword))
                list = list.distinct()

            context['keyword']=keyword

    list = list.order_by('date')

    page_number=0
    yearsrange = range(timezone.now().year,timezone.now().year)
    if (list.count() > 0):
        dictpagination = pagination(page, list, 8, '-date')
        page_number = dictpagination['page_number']
        publications = dictpagination['list']
        context["publications"] = publications

        min = Publication.objects.filter(idtype=pub_id).aggregate(Min('date'))
        max = Publication.objects.filter(idtype=pub_id).aggregate(Max('date'))
        yearsrange = reversed(range(min['date__min'].year, max['date__max'].year+1))

    context["years"] = yearsrange
    context["page_number"] = range(1, page_number+1)

    return render(request, "admin/listPublications.html", context)

def addPublication(request, idtypepublication=1):
    checkIfAdmin(request)

    context = getContext()

    type = get_object_or_404(Typepublication, pk=idtypepublication)
    context["type"] = type
    context["persons"] = Person.objects.filter(~Q(member__idtypemember=4)).order_by('name')
    context['step_number']=range(0,4)

    if request.method == 'POST':

        if request.POST['idtype'] == "" or request.POST['title'] == "":
            context["error"] = "Fields 'Type' and 'Title' are required."
            return render(request, "admin/addPublication.html", context)

        typepub = Typepublication.objects.get(
            pk=request.POST['idtype'])
        context["type"] = typepub

        publication = Publication(idtype=typepub)

        

        names = ['title','description', 'date']
        setAttributeByRequestParams(request,names, publication)
        
        if request.FILES:
            if request.FILES.getlist('imagefront'):
                front = request.FILES.getlist('imagefront')[0]
                publication.imagefront = handle_uploaded_file(front, 'images/publication/')
                
            if request.FILES.getlist('imageback'):
                back = request.FILES.getlist('imageback')[0]
                publication.imageback = handle_uploaded_file(back, 'images/publication/')
                

        publication.save()
        context["success"] = "New publication inserted successfully."

        lastPublication = Publication.objects.last()

        fkarticlenumber = 0
        data = request.POST.items()
        for keys, values in data:
            if values !="":
                if 'fkidperson' in keys:
                    if Publicationauthor.objects.filter(idpublication=publication, idperson=Person.objects.get(pk=values)).count()==0:
                        pubauth = Publicationauthor(
                            idpublication=lastPublication, idperson=Person.objects.get(pk=values))
                        pubauth.save()
            if 'fknamearticle' in keys:
                fkarticlenumber += 1

        for i in range(0, fkarticlenumber):
            pd = Publicationdetail(idpublication=lastPublication)
            name = request.POST.get('fknamearticle'+str(i))

            if name == "":
                name=None
            pd.name = name

            if request.FILES:
                if request.FILES.getlist('fkpdfarticle'+str(i)):
                    pdf = request.FILES.getlist('fkpdfarticle'+str(i))[0]
                
                    pd.pdf = handle_uploaded_file(pdf, 'pdf/'+renameFile(lastPublication.idtype.type_en))

            if  pd.pdf is not None:
                pd.save()

    return render(request, "admin/addPublication.html", context)


def updatePublication(request, pub_id=1):
    checkIfAdmin(request)

    context = getContext()

    publication = get_object_or_404(Publication, pk=pub_id)
    context["publication"] = publication
    context["persons"] = Person.objects.filter(~Q(member__idtypemember=4)).order_by('name')

    countChange = 0
    countChangePublication = 0
    if request.method == 'POST':
        if publication.idtype is None or request.POST['idtype'] != str(publication.idtype.id) :
            publication.idtype = Typepublication.objects.get(
                pk=request.POST['idtype'])
            countChangePublication += 1
            countChange += 1

        names = ['title', 'description', 'date']
        countChangePublication += updateAttributeByRequestParams(request,names,publication)
        
        # ADD PUBLICATION ITEMS
        if request.FILES:
            if request.FILES.getlist('imagefront'):
                front = request.FILES.getlist('imagefront')[0]
                delete_file(publication.imagefront, 'images/publication')
                publication.imagefront = handle_uploaded_file(front, 'images/publication')
                
                countChangePublication += 1
            if request.FILES.getlist('imageback'):
                back = request.FILES.getlist('imageback')[0]
                delete_file(publication.imageback, 'images/publication')
                publication.imageback = handle_uploaded_file(back, 'images/publication')
                countChangePublication += 1

        fkarticlenumber = 0
        data = request.POST.items()
        for keys, values in data:
            if values!="":
                if 'fkidperson' in keys:
                    if Publicationauthor.objects.filter(idpublication=publication, idperson=Person.objects.get(pk=values)).count()==0:
                        pubauth = Publicationauthor(
                            idpublication=publication, idperson=Person.objects.get(pk=values))
                        pubauth.save()
            if 'fknamearticle' in keys:
                fkarticlenumber += 1

        for i in range(0, fkarticlenumber):
            pd = Publicationdetail(idpublication=publication)
            name = request.POST.get('fknamearticle'+str(i))
            if name == "":
                name=None
            pd.name = name

            if request.FILES:
                if request.FILES.getlist('fkpdfarticle'+str(i)):
                    pdf = request.FILES.getlist('fkpdfarticle'+str(i))[0]
                    pd.pdf = handle_uploaded_file(pdf, 'pdf/'+renameFile(publication.idtype.type_en))

            if  pd.pdf is not None:
                pd.save()

        # UPDATE PUBLICATION ITEMS
        if len(request.POST.getlist("deleteeditor")) > 0:
            for id_pubauth in request.POST.getlist("deleteeditor"):
                authortodelete = Publicationauthor.objects.get(pk=id_pubauth)
                authortodelete.delete()
            countChange += 1

        if len(request.POST.getlist("deletepd")) > 0:
            for id_pubDetail in request.POST.getlist("deletepd"):
                pubdetailtodelete = Publicationdetail.objects.get(
                    pk=id_pubDetail)
                if pubdetailtodelete.pdf is not None:
                    delete_file(pubdetailtodelete.pdf, 'pdf/' + renameFile(publication.idtype.type_en))
                pubdetailtodelete.delete()
            countChange += 1

        if countChangePublication > 0:
            countChange += 1
            publication.save()
        if countChange > 0:
            context["success"] = "Publication updated successfully."
        else:
            context["error"] = "There is nothing to change."

    return render(request, "admin/updatePublication.html", context)


def deletePublication(request, pub_id=None):
    checkIfAdmin(request)
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'
    if is_ajax:
        if request.method == 'POST':
            id_publication = request.POST.get('id_pub', '')
            try:
                publication = Publication.objects.get(pk=id_publication)

                pubDetails = Publicationdetail.objects.filter(
                    idpublication=publication.id)
                for det in pubDetails:
                    delete_file(det.pdf, 'pdf/' + renameFile(publication.idtype.type_en))
                    det.delete()
                
                if publication.imagefront:
                    delete_file(publication.imagefront, 'images/publication')
                if publication.imageback:
                    delete_file(publication.imageback, 'images/publication')

                publication.delete()

            except KeyError:
                return HttpResponseBadRequest('Error')
            else:
                return JsonResponse({'success': 'Publication successfully deleted.'})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

# LIST OF MEMBERS
def listMembers(request,typemember_id=2,page=1):
    checkIfAdmin(request)

    context = getContext()
    type = get_object_or_404(Typemember, pk=typemember_id)
    context["type"] = type

    list = Member.objects.filter(idtypemember=typemember_id)

    if request.method == 'GET':
        if 'keyword' in request.GET:
            keyword = request.GET['keyword']
        
            list = list.filter(Q(memberpostinst__iddept__name__icontains = keyword)|
            Q(memberpostinst__idinst__name__icontains = keyword)|
            Q(memberpostinst__idpost__name__icontains = keyword)|
            Q(idperson__name__icontains = keyword)|
            Q(idperson__username__icontains = keyword))
            list = list.distinct()

            context['keyword']=keyword

    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, 8, 'idperson__name')
        page_number = dictpagination['page_number']
        members = dictpagination['list']
        context["members"] = members


    context["page_number"] = range(1, page_number+1)

    return render(request, "admin/listMembers.html", context)

def addMember(request,typemember_id=1):
    checkIfAdmin(request)
    
    context = getContext()
    type = get_object_or_404(Typemember, pk=typemember_id)
    context["type"] = type
    context['posts']=Post.objects.all().order_by('name')
    context['insts']= Institution.objects.all().order_by('name')
    context['depts']=Department.objects.all().order_by('name')
    if request.method == 'POST':

        if request.POST['idtypemember'] == "" or request.POST['name'] == "" or request.POST['username'] == "":
            context["error"] = "Fields 'Type','Name' and 'Username'  are required."
            return render(request, "admin/addMember.html", context)

        typemember = Typemember.objects.get(
            pk=request.POST['idtypemember'])
        context["type"] = typemember

        lastPerson = None
        theperson = Person.objects.filter(Q(name=str(request.POST['name'])), Q(username=str(request.POST['username'])))
        if theperson.count()>0:
            lastPerson = theperson[0]
        else:
            newperson = Person(name=request.POST['name'], username=request.POST['username'])
            if request.POST['title']!="":
                newperson.title = request.POST['title']
            newperson.save()
            lastPerson = Person.objects.last()

        member = Member(idtypemember=typemember,idperson=lastPerson)

        names = ['description', 'mail']
        setAttributeByRequestParams(request,names, member)
        
        if request.FILES:
            if request.FILES.getlist('image'):
                imageFile = request.FILES.getlist('image')[0]
                w,h = get_image_dimensions(imageFile)
                # print(str(w)+", "+str(h))
                if w!=h:
                    context['imageError']="Recommended size : 1080 x 1080 pixels"
                    return render(request, "admin/addMember.html", context)
                member.image = handle_uploaded_file(imageFile, 'images/members')
                

        member.save()

        lastMember = Member.objects.last()
        fkmembernumber = 0
        data = request.POST.items()
        for keys, values in data:
            if values!="":
                if 'fkpost' in keys:
                    fkmembernumber += 1

        for i in range(0, fkmembernumber):
            mip = Memberpostinst(idmember=lastMember)
            countifnull=0
            if request.POST['fkpost'+str(i)]!="":
                mip.idpost = Post.objects.get(pk=request.POST['fkpost'+str(i)])
                countifnull += 1
            if request.POST['fkinst'+str(i)]!="":
                mip.idinst = Institution.objects.get(pk=request.POST['fkinst'+str(i)])
                countifnull += 1
            if request.POST['fkdept'+str(i)]!="":
                mip.iddept = Department.objects.get(pk=request.POST['fkdept'+str(i)])
                countifnull += 1

            if countifnull>0:
                mip.save()

        context["success"] = "New member inserted successfully."


    return render(request, "admin/addMember.html", context)


def updateMember(request,member_id=None):
    checkIfAdmin(request)

    context = getContext()
    member = get_object_or_404(Member, pk=member_id)
    context['member'] = member
    context['posts']=Post.objects.all().order_by('name')
    context['insts']= Institution.objects.all().order_by('name')
    context['depts']=Department.objects.all().order_by('name')


    countChange = 0
    countChangeMember = 0
    if request.method == 'POST':
        if member.idtypemember is None or request.POST['idtypemember'] != str(member.idtypemember.id) :
            member.idtypemember = Typemember.objects.get(
                pk=request.POST['idtypemember'])
            countChangeMember += 1
            countChange += 1
        
        countChangePerson = 0
        theperson = member.idperson
        namesPerson = ['title', 'name','username']
        countChangePerson += updateAttributeByRequestParams(request, namesPerson,theperson)
        
        if countChangePerson>0:
            theperson.save()
            countChange += 1

        names = ['mail', 'description']
        countChangeMember += updateAttributeByRequestParams(request, names,member)

        if request.FILES:
            if request.FILES.getlist('image'):
                imageFile = request.FILES.getlist('image')[0]
                w,h = get_image_dimensions(imageFile)
                # print(w,h)
                if w!=h:
                    context['imageError']="Recommended size : 1080 x 1080 pixels"
                    return render(request, "admin/updateMember.html", context)
                delete_file(member.image, 'images/members')
                member.image = handle_uploaded_file(imageFile, 'images/members')
                
                countChangeMember += 1
                countChange += 1
        
        if len(request.POST.getlist("deletempi")) > 0:
            for id_mpi in request.POST.getlist("deletempi"):
                mpitodelete = Memberpostinst.objects.get(pk=id_mpi)
                mpitodelete.delete()
            countChange += 1

        fkmembernumber = 0
        data = request.POST.items()
        for keys, values in data:
            if values!="":
                if 'fkpost' in keys:
                    fkmembernumber += 1

        for i in range(0, fkmembernumber):
            mip = Memberpostinst(idmember=member)
            countifnull=0
            if request.POST['fkpost'+str(i)]!="":
                mip.idpost = Post.objects.get(pk=request.POST['fkpost'+str(i)])
                countifnull += 1
            if request.POST['fkinst'+str(i)]!="":
                mip.idinst = Institution.objects.get(pk=request.POST['fkinst'+str(i)])
                countifnull += 1
            if request.POST['fkdept'+str(i)]!="":
                mip.iddept = Department.objects.get(pk=request.POST['fkdept'+str(i)])
                countifnull += 1

            if countifnull>0:
                countChange += 1
                mip.save()
        
        if countChangeMember>0:
            member.save()
        if countChange > 0:
            context["success"] = "Member's informations updated successfully."
        else:
            context["error"] = "There is nothing to change."
            
    return render(request, "admin/updateMember.html", context)

def deleteMember(request, member_id=None):
    member_id = request.POST.get('member_id', '')
    member = Member.objects.get(pk=member_id)
    return ajaxDelete(request,member,'Member',member.image,'images/members')
    
# ---------------------------------------PARTNERS------------------------------------------
def listPartners(request,page=1):
    checkIfAdmin(request)

    context = getContext()

    list = Partner.objects.all()
    if request.method == 'GET':
        if 'keyword' in request.GET:
            keyword = request.GET['keyword']
            list = list.filter(Q(idinst__name__icontains=keyword))
            list = list.distinct()
            context['keyword']=keyword

    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, 8, 'idinst__name')
        page_number = dictpagination['page_number']
        partners = dictpagination['list']
        context["partners"] = partners

    context["page_number"] = range(1, page_number+1)

    return render(request, "admin/listPartners.html", context)

def addPartner(request):
    checkIfAdmin(request)

    context = getContext()
    if request.method=="POST":
        if request.POST['name'] == "" or request.POST['link'] == "":
            context["error"] = "Fields 'Name' and 'Link' are required."
            return render(request, "admin/addPartner.html", context)
        
        partner = Partner(link=request.POST['link'])

        if request.FILES:
            if request.FILES.getlist('logo'):
                file = request.FILES.getlist('logo')[0]
                w,h = get_image_dimensions(file)
                if w!=295 and h!=250:
                    context['imageError']="Recommended size : 295 x 250 pixels"
                    return render(request, "admin/addPartner.html", context)
                partner.logo = handle_uploaded_file(file, 'images/partners')
                
        else:
            context["error"] = "You must insert a logo."
            return render(request, "admin/addPartner.html", context)
            
        lastInst = None
        theinstitution = Institution.objects.filter(name=str(request.POST['name']))
        if theinstitution.count()>0:
            lastInst = theinstitution[0]
        else:
            nextId = get_next_value("institution")
            nextId = "I"+str(nextId)
            newinst = Institution(id=nextId,name=request.POST['name'])
            newinst.save()
            lastInst = Institution.objects.get(pk=nextId)

        partner.idinst = lastInst

        names = ['description']
        setAttributeByRequestParams(request,names, partner)
        
           
        partner.isLink = eval(request.POST['be_link'])

        partner.save()
        context["success"] = "New partner inserted successfully."


    return render(request, "admin/addPartner.html", context)


def updatePartner(request,partner_id=None):
    checkIfAdmin(request)

    context = getContext()
    partner = get_object_or_404(Partner,pk=partner_id)
    context['partner']=partner
    countChange = 0
    countChangePartner = 0
    if request.method == 'POST':
        
        inst = partner.idinst
        params = ['name']
        countChangeInstPerson = updateAttributeByRequestParams(request, params,inst)
        
        if countChangeInstPerson>0:
            inst.save()
            countChange += 1

        names = ['link', 'description']
        countChangePartner += updateAttributeByRequestParams(request, names,partner)

        if eval(request.POST['be_link'])!=partner.isLink:
            partner.isLink = eval(request.POST['be_link'])
            countChangePartner += 1

        if request.FILES:
            if request.FILES.getlist('logo'):
                imageFile = request.FILES.getlist('logo')[0]
                w,h = get_image_dimensions(imageFile)
                if w!=295 and h!=250:
                    context['imageError']="Recommended size : 295 x 250 pixels"
                    return render(request, "admin/addPartner.html", context)
                delete_file(partner.logo, 'images/partners')
                partner.logo = handle_uploaded_file(imageFile, 'images/partners')
                
                countChangePartner += 1
                countChange += 1
        
        if countChangePartner>0:
            countChange +=1
            partner.save()
        if countChange > 0:
            context["success"] = "Member's informations updated successfully."
        else:
            context["error"] = "There is nothing to change."
            
    return render(request, "admin/updatePartner.html", context)

def deletePartner(request,partner_id=None):
    partner_id = request.POST.get('partner_id', '')
    partner = Partner.objects.get(pk=partner_id)
    return ajaxDelete(request,partner,'Partner',partner.logo,'images/partners')
    
# IMAGES--------------------------------
def listImages(request,image_type=1):
    checkIfAdmin(request)

    context = getContext()
    type_image = Imagetype.objects.all()
    context['type_image']=type_image
    imagetype=Imagetype.objects.get(pk=image_type)
    context['imagetype'] = imagetype
    return render(request, "admin/listImages.html", context)

def addImage(request,image_type=1):
    checkIfAdmin(request)

    context = getContext()
    type_image = Imagetype.objects.all()
    context['type_image']=type_image
    imagetype=Imagetype.objects.get(pk=image_type)
    context['imagetype'] = imagetype
    if request.method == 'POST':
        if request.POST['idtype'] == "":
            context["error"] = "Fields 'Type' is required."
            return render(request, "admin/addImage.html", context)

        typeimage = Imagetype.objects.get(pk=request.POST['idtype'])
        context["imagetype"] = typeimage
        
        if not request.FILES:
            context["error"] = "You must upload photo."
            return render(request, "admin/addImage.html", context)
        else:
            files = request.FILES.getlist('files')
            for f in files:
                titleImg= f.name.split(".")[0].replace("_"," ")
                if 'title' in request.POST:
                    titleImg = request.POST['title']
                image = Image(idtype=typeimage,title=titleImg)
                path = renameFile(typeimage.type_en)
                image.name = handle_uploaded_file(f, 'images/'+path)
                image.save()

        context["success"] = "New photo of "+typeimage.type+" inserted successfully."


    return render(request, "admin/addImage.html", context)

def updateImage(request,image_id=1):
    checkIfAdmin(request)

    context = getContext()
    type_image = Imagetype.objects.all()
    context['type_image']=type_image

    image=Image.objects.get(pk=image_id)
    context['image'] = image

    countChange = 0
    if request.method == 'POST':
        if image.idtype is None or request.POST['idtype'] != str(image.idtype.id) :
            image.idtype = Imagetype.objects.get(pk=request.POST['idtype'])
            countChange += 1

        names = ['title']
        countChange += updateAttributeByRequestParams(request, names,image)

        if request.FILES:
            if request.FILES.getlist('file'):
                imageFile = request.FILES.getlist('file')[0]
                path = renameFile(image.idtype.type_en)
                delete_file(image.name, 'images/'+path)
                image.name = handle_uploaded_file(imageFile, 'images/'+path)
                countChange += 1
            
        
        if countChange>0:
            context["success"] = "Image's informations updated successfully."            
            image.save()
        else:
            context["error"] = "There is nothing to change."
            
    return render(request, "admin/updateImage.html", context)

def deleteImage(request):
    id_image = request.POST.get('id_image', '')
    image = Image.objects.get(pk=id_image)
    path = renameFile(image.idtype.type)
    return ajaxDelete(request,image,'Image',image.name,'images/'+path)
    
def updateTypeSubActivity(request,subactivity_id=None):
    checkIfAdmin(request)
    context = getContext()
    subactivity = get_object_or_404(Typesubactivity,pk=subactivity_id)
    context['subactivity']=subactivity

    countChangeSubActivity = 0
    if request.method == 'POST':
        if subactivity.idtypeactivity is None or request.POST['idtypeactivity'] != subactivity.idtypeactivity.id :
            subactivity.idtypeactivity = Typeactivity.objects.get(
                pk=request.POST['idtypeactivity'])
            countChangeSubActivity += 1
        params = ['type']
        countChangeSubActivity += updateAttributeByRequestParams(request,params, subactivity)

        if countChangeSubActivity > 0:
            subactivity.save()
            context['subactivity'] = subactivity
            context["success"] = "Sub - activity updated successfully."
        else:
            context["error"] = "There is nothing to change."

    return render(request, "admin/updateSubActivity.html", context)

def deleteTypeSubActivity(request):
    id_subactivity = request.POST.get('id_subactivity', '')
    typesubactivity = Typesubactivity.objects.get(pk=id_subactivity)
    return ajaxDelete(request,typesubactivity,'Sub-activity')

def addTypeSubActivity(request,idtypeactivity=None):
    checkIfAdmin(request)
    context = getContext()
    context['typeactivity']=get_object_or_404(Typeactivity,pk=idtypeactivity)
    if request.method == 'POST':
        if request.POST['idtypeactivity'] == "" or request.POST['type'] == "":
            context["error"] = "Fields 'Type of activity' and 'Type' are required."
            return render(request, "admin/addSubActivity.html", context)

        typeactivity = Typeactivity.objects.get(
            pk=request.POST['idtypeactivity'])
        
        
        typesubactivity = Typesubactivity.objects.filter(type=str(request.POST['type']), idtypeactivity=typeactivity.id)
        if typesubactivity.count()>0:
            context["warning"] = "This institution is already registered."
        else:
            nextId = get_next_value("typesubactivity")
            nextId = "SA"+str(nextId)
            newTypeSubActivity = Typesubactivity(id=nextId, type=request.POST['type'], idtypeactivity=typeactivity)
            newTypeSubActivity.save()
            context["success"] = "New "+typeactivity.type+" sub-activity inserted successfully."
            
    return render(request, "admin/addSubActivity.html", context)

def listType(request):
    checkIfAdmin(request)
    context = getContext()
    return context

def addType(request,model,modelstr,params=['type'],nextId=None):
    checkIfAdmin(request)
    context = getContext()
    
    if request.method=="POST":
        if request.POST['type'] == "":
            context["error"] = "Field 'Type' is required."
        else:
            typemodel = model.objects.filter(type=str(request.POST['type']))
            if typemodel.count()>0:
                context["warning"] = "This "+modelstr+"  type is already registered."
            else:
                newType = model()
                setAttributeByRequestParams(request,params,newType)
                if nextId:
                    newType.id = nextId
                newType.save()
                context["success"] = "New "+modelstr+" type inserted successfully."

    return context

def updateType(request,id, model, modelstr):
    checkIfAdmin(request)
    context = getContext()
    type = get_object_or_404(model,pk=id)
    context['type']=type

    countChanges = 0
    if request.method == 'POST':
        params = ['type']
        countChanges += updateAttributeByRequestParams(request,params, type)

        if countChanges > 0:
            type.save()
            context['type'] = type
            context["success"] = modelstr+" type updated successfully."
        else:
            context["error"] = "There is nothing to change."

    return context

def listTypeActivity(request):
    context = listType(request)
    return render(request,  "admin/listTypeActivity.html", context)

def addTypeActivity(request):
    nextId = get_next_value("typeactivity")
    nextId = "A"+str(nextId)
    context = addType(request,Typeactivity,'activity',['type'],nextId)
    return render(request, "admin/addTypeActivity.html", context)

def updateTypeActivity(request,type_id=None):
    context = updateType(request,type_id,Typeactivity,'Activity')
    return render(request, "admin/updateTypeActivity.html", context)

def deleteTypeActivity(request):
    type_id = request.POST.get('type_id', '')
    model = Typeactivity.objects.get(pk=type_id)
    return ajaxDelete(request,model,'Activity type')

def listTypePublication(request):
    context = listType(request)
    return render(request,  "admin/listTypePublication.html", context)

def addTypePublication(request):
    context = addType(request,Typepublication,'publication')
    return render(request, 'admin/addTypePublication.html', context)

def updateTypePublication(request,type_id=None):
    context = updateType(request,type_id,Typepublication,'publication')
    return render(request, "admin/updateTypePublication.html", context)

def deleteTypePublication(request):
    type_id = request.POST.get('type_id', '')
    model = Typepublication.objects.get(pk=type_id)
    return ajaxDelete(request,model,'Publication type')


def listTypeImage(request):
    context = listType(request)
    context['type_image']=Imagetype.objects.all()
    return render(request,  "admin/listTypeImage.html", context)


def addTypeImage(request):
    context = addType(request,Imagetype,'image')
    return render(request, 'admin/addTypeImage.html', context)

def updateTypeImage(request,type_id=None):
    context = updateType(request,type_id,Imagetype,'image')
    return render(request, "admin/updateTypeImage.html", context)

def deleteTypeImage(request):
    type_id = request.POST.get('type_id', '')
    model = Imagetype.objects.get(pk=type_id)
    return ajaxDelete(request,model,'Image type')


def listTypeMember(request):
    context = listType(request)
    return render(request,  "admin/listTypeMember.html", context)

def addTypeMember(request):
    checkIfAdmin(request)
    context = getContext()

    if request.method == 'POST':
        if request.POST['type'] == "":
            context["error"] = "Fields 'Type' is required."
            return render(request, "admin/addMember.html", context)
        else:
            typemember = Typemember.objects.filter(type=str(request.POST['type']))
            if typemember.count()>0:
                context["warning"] = "This member  type is already registered."
            else:
                newType = Typemember(type=request.POST['type'],description=request.POST['description'])
                newType.save()
                if request.FILES:
                    files = request.FILES.getlist('files')
                    for f in files:
                        name = handle_uploaded_file(f, 'images/members')
                        img = Typememberimage(image=name,idtypemember=newType)
                        img.save()
                
                context["success"] = "New member type inserted successfully."

    return render(request, "admin/addTypeMember.html", context)

def updateTypeMember(request,type_id=None):
    checkIfAdmin(request)
    context = getContext()
    typemember = get_object_or_404(Typemember,pk=type_id)
    context['type']=typemember
    context['imgs']=typemember.typememberimage_set.all()
    countChanges = 0
    if request.method == 'POST':
        params = ['type','description']
        countChanges += updateAttributeByRequestParams(request,params, typemember)

        if request.FILES:
            files = request.FILES.getlist('files')
            for f in files:
                name = handle_uploaded_file(f, 'images/members')
                img = Typememberimage(image=name,idtypemember=typemember)
                img.save()
            countChanges += 1

        if len(request.POST.getlist("supprImage")) > 0:
            imgs = request.POST.getlist("supprImage")
            for img_id in imgs:
                image = Typememberimage.objects.get(pk=img_id)   
                image.delete()     
                delete_file(img, 'images/members')
            countChanges += 1
        
        if countChanges > 0:
            typemember.save()
            context['type'] = typemember
            context["success"] = "Member type updated successfully."
        else:
            context["error"] = "There is nothing to change."

    return render(request, "admin/updateTypeMember.html", context)

def deleteTypeMember(request):
    type_id = request.POST.get('type_id', '')
    type = Typemember.objects.get(pk=type_id)
    return ajaxDelete(request,type,'Member type',type.typememberimage_set.all().values_list('image',flat=True),'images/members')
    

def addMessageofyear(request):
    context = getContext()
    checkIfAdmin(request)
    context['members']=Member.objects.filter(idtypemember=2)
    countChanges = 0
    if request.method == 'POST':
        message_of_year=Messageofyear(idmember=Member.objects.get(pk=request.POST['idmember']))
        names = ['year','description']
        setAttributeByRequestParams(request,names, message_of_year)
        message_of_year.save()

        context["success"] = "The message of year "+message_of_year.year+" inserted successfully."

    return render(request, "admin/addMessageofyear.html", context)

def updateMessageofyear(request,id=1):
    context = getContext()
    checkIfAdmin(request)
    message_of_year = Messageofyear.objects.get(pk=id)
    context['message_of_year']=message_of_year
    context['members']=Member.objects.filter(idtypemember=2)
    countChanges = 0
    if request.method == 'POST':
        if request.POST['idmember']!=message_of_year.idmember.id:
            message_of_year.idmember = Member.objects.get(pk=request.POST['idmember'])
            countChanges += 1
        params = ['year','description']
        countChanges += updateAttributeByRequestParams(request,params, message_of_year)

        if countChanges > 0:
            message_of_year.save()
            context["success"] = "Message of the year "+str(message_of_year.year)+" updated successfully."
        else:
            context["error"] = "There is nothing to change."

    return render(request, "admin/updateMessageofyear.html", context)

def listReports(request,page=1, year=None):
    checkIfAdmin(request)
    context = getContext()
    reports = Report.objects.all()
    if year is not None:
        reports = reports.filter(year=year)
        context["year"] = year
    reports = reports.order_by('year')

    min = reports.aggregate(Min('year'))
    max = reports.aggregate(Max('year'))
    context["years"] = reversed(range(min['year__min'], max['year__max']+1))
    page_number=0
    if (reports.count() > 0):
        dictpagination = pagination(page, reports, 6, '-year')
        page_number = dictpagination['page_number']
        reports = dictpagination['list']
        context["reports"] = reports
        

    context["page_number"] = range(1, page_number+1)
    return render(request, "admin/listReports.html", context)

def addReport(request):
    checkIfAdmin(request)

    context = getContext()
    if request.method == 'POST':
        if request.POST['title'] == "":
            context["error"] = "Field 'Title' is required."
            return render(request, "admin/addReport.html", context)

        if not request.FILES:
            context["error"] = "You must upload pdf file for the report."
            return render(request, "admin/addReport.html", context)
        else:
            report = Report()
            if request.POST['year'] == "":
                from datetime import date
                request.POST['year'] = date.today().year
            names = ['title','year']
            setAttributeByRequestParams(request,names, report)
            if request.FILES.getlist('pdf'):
                pdf = request.FILES.getlist('pdf')[0]
                report.pdf = handle_uploaded_file(pdf, 'pdf/annual_reports/')
            
            try:
                report.save()
                context["success"] = "New annual report inserted successfully."
            except IntegrityError as e:
                context["error"] = "This pdf file is already attached to another annual report."
                return render(request, "admin/addReport.html", context)
            
            
    return render(request, "admin/addReport.html", context)

def deleteReport(request):
    id_report = request.POST.get('id_report', '')
    report = Report.objects.get(pk=id_report)
    return ajaxDelete(request,report,'Report',report.pdf,'pdf/annual_reports')

def updateReport(request,id_report=1):
    checkIfAdmin(request)
    context = getContext()
    report = get_object_or_404(Report, pk=id_report)
    context["report"] = report
    countChange = 0
    if request.method == 'POST':
        names = ['title', 'year']
        countChange += updateAttributeByRequestParams(request,names,report)
        if request.FILES:
            if request.FILES.getlist('pdf'):
                pdf = request.FILES.getlist('pdf')[0]
                report.pdf = handle_uploaded_file(pdf, 'pdf/annual_reports')
                countChange += 1
        if countChange > 0:
            report.save()
            context["success"] = "Annual report "+str(report.year)+" updated successfully."
        else:
            context["error"] = "There is nothing to change."

    return render(request, "admin/updateReport.html", context)

def allStat(activityPerY, type_name):
    context={}
    minYear = activityPerY.aggregate(Min('date'))['date__min'].year
    maxYear = activityPerY.aggregate(Max('date'))['date__max'].year
    context['max']=activityPerY.aggregate(Max('number'))['number__max']
    context['step']=math.ceil(context['max']/6)

    activityPerY = sorted(activityPerY, key=operator.itemgetter(type_name))
    outputList=[]
    for i,g in itertools.groupby(activityPerY, key=operator.itemgetter(type_name)):
        outputList.append(list(g))
    

    temp1 = [*range(minYear,maxYear+1)]
    for index, item in enumerate(outputList):
        temp2 = [d['date__year'] for d in item]
        for missing in list(set(temp1) - set(temp2)):
            act={
                type_name:item[0][type_name],
                "date__year":missing,
                "number":0
            }
            item.append(act)
        outputList[index] = sorted(item, key=lambda i: i['date__year'])

    context['result']=outputList
    return context

def joinWithAllMonths(activityPerM,type_name):
    import calendar
    activityPerM = sorted(activityPerM, key=operator.itemgetter(type_name))
    outputList=[]
    for i,g in itertools.groupby(activityPerM, key=operator.itemgetter(type_name)):
        outputList.append(list(g))

    temp1 = [*range(1,13)]
    for index, item in enumerate(outputList):
        temp2 = [d['date__month'] for d in item]
        for missing in list(set(temp1) - set(temp2)):
            act={
                type_name:item[0][type_name],
                "date__month":missing,
                "number":0
            }
            item.append(act)
        outputList[index] = sorted(item, key=lambda i: i['date__month'])

        for d in outputList[index] :
            d['date__month'] = calendar.month_abbr[d['date__month']]            

    return outputList

def statistics (request):
    checkIfAdmin(request)
    context = getContext()
    overallAct = Activity.objects.values('idtypeactivity__type_en').annotate(number=Count('idtypeactivity')).order_by('-number')
    overallPub = Publication.objects.values('idtype__type_en').annotate(number=Count('idtype')).order_by('-number')
    activityPerY = Activity.objects.filter(date__year__gte =(date.today().year-10)).values('idtypeactivity__type_en', 'date__year').annotate(number=Count('idtypeactivity')).order_by('idtypeactivity', 'date__year')
    contextActivity = allStat(activityPerY, 'idtypeactivity__type_en')
    publicationPerY = Publication.objects.filter(date__year__gte =(date.today().year-10)).values('idtype__type_en', 'date__year').annotate(number=Count('idtype')).order_by('idtype', 'date__year')
    contextPublication = allStat(publicationPerY, 'idtype__type_en')
    context['maxPub']=contextPublication['max']
    context['stepPub']=contextPublication['step']
    context['publications']=contextPublication['result']
    context['max']=contextActivity['max']
    context['step']=contextActivity['step']
    context['activities']=contextActivity['result']
    context['overallAct']=list(overallAct)
    context['overallPub']=list(overallPub)
    context['rangeActivityYear']=reversed(range(Activity.objects.all().aggregate(Min('date'))['date__min'].year, timezone.now().year+1))
    context['rangePublicationYear']=reversed(range(Publication.objects.all().aggregate(Min('date'))['date__min'].year, timezone.now().year+1))

    
    defaultYear=2022
    activityPerM = Activity.objects.filter(date__year=defaultYear).values('idtypeactivity__type_en','date__month').annotate(number=Count('date__month')).order_by('idtypeactivity__type_en','-date__month')
    activityPerMPerType = joinWithAllMonths(list(activityPerM),'idtypeactivity__type_en')
    context['activitiesPerM']=activityPerMPerType
    publicationPerM = Publication.objects.filter(date__year=defaultYear).values('idtype__type_en','date__month').annotate(number=Count('date__month')).order_by('idtype__type_en','-date__month')
    publicationPerMPerType = joinWithAllMonths(list(publicationPerM),'idtype__type_en')
    context['publicationsPerM']=publicationPerMPerType
    return render(request, "admin/statistics.html", context)


def changeActivityYear(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'
    if is_ajax:
        if request.method == 'POST':
            year = request.POST.get('year','')
            activityPerM = Activity.objects.filter(date__year=year).values('idtypeactivity__type_en','date__month').annotate(number=Count('date__month')).order_by('idtypeactivity__type_en','-date__month')
            activityPerMPerType = joinWithAllMonths(list(activityPerM),'idtypeactivity__type_en')
            return  JsonResponse({'activitiesPerM': activityPerMPerType, 'year':year})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

def changePublicationYear(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'
    if is_ajax:
        if request.method == 'POST':
            year = request.POST.get('year','')
            publicationPerM = Publication.objects.filter(date__year=year).values('idtype__type_en','date__month').annotate(number=Count('date__month')).order_by('idtype__type_en','-date__month')
            publicationPerMPerType = joinWithAllMonths(list(publicationPerM),'idtype__type_en')
            return  JsonResponse({'publicationsPerM': publicationPerMPerType, 'year':year})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')