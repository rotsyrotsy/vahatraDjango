from msilib import sequence
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.http import HttpResponseRedirect, JsonResponse, HttpResponseBadRequest
from activities.models import Activity, Activityimage, Activityperson, Fieldschool, Typeactivity, Activityinstitution, Visit, Typesubactivity, Location
from admin.models import Administrator
from django.shortcuts import render
from django.contrib.auth.hashers import make_password, check_password
from django.core.mail import send_mail, EmailMessage
from django.db.models import Min, Max,Q
from math import ceil
from sequences import get_next_value
from association.models import Department, Institution, Member, Memberpostinst, Partner, Person, Post, Typemember
import os
from publications.models import Publication, Publicationauthor, Publicationdetail, Typepublication
import unidecode
from django.core.files.images import get_image_dimensions

type_activity = Typeactivity.objects.all()
type_publication = Typepublication.objects.all()
type_member = Typemember.objects.all()

def index(request):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }
    if 'admin' not in request.session:
        return HttpResponseRedirect(reverse("admin:login"))
    else:
        print(request.session['admin'])
        return render(request, "admin/index.html", context)


def login(request):
    if request.method == 'POST':
        try:
            # encryptedpassword=make_password(request.POST['password'])
            # print(encryptedpassword)
            # checkpassword=check_password(request.POST['password'], encryptedpassword)
            # print(checkpassword)
            # data = Administrator(id='ADM2',username=request.POST["username"],password=encryptedpassword)
            # data.save()
            admin = Administrator.objects.get(
                username=request.POST["username"])
            if check_password(request.POST['password'], admin.password) == False:
                raise Administrator.DoesNotExist
        except (KeyError, Administrator.DoesNotExist):
            return render(
                request,
                "admin/login.html",
                {
                    "error_message": "Verify your username and password.",
                },
            )
        else:
            if len(request.POST.getlist("remember_me")) == 0:
                request.session.set_expiry(0)
            request.session['admin'] = admin.id
            return HttpResponseRedirect(reverse("admin:index"))
    else:
        return render(request, "admin/login.html")


def logout(request):
    try:
        del request.session['admin']
    except KeyError:
        pass
    return render(request, "admin/login.html", {"message": "You're logged out"})


def reset_password(request):
    if request.method == 'POST':
        try:
            admin = Administrator.objects.get(mail=request.POST["mail"])
        except (KeyError, Administrator.DoesNotExist):
            return render(
                request,
                "admin/reset_password.html",
                {
                    "error_message": "There is no account related to this email. Verify your input.",
                },
            )
        else:
            print(admin.mail)
            # email = EmailMessage('Test', 'Test', to=['rafa.rotsy@gmail.com'])
            # email.send()
            send_mail(
                'Password reset',
                'Here is the code to enable you resetting your administrator password: "TEST" ',
                'rotsyvonimanitra@hotmail.com',
                ['rafa.rotsy@gmail.com'],
                fail_silently=False,
            )
            return render(request, "admin/reset_password.html", {"message": "We have sent you an email to change your password."})
    else:
        return render(request, "admin/reset_password.html")

#  -----------------------------------ACTIVITIES ---------------------------------

def pagination(actualpage, list, item_number, orderby):
    page_number = list.count()
    page_number = ceil(page_number/item_number)

    if (actualpage > page_number):
        actualpage = page_number
    elif actualpage < 1:
        actualpage = 1
    actualpage -= 1

    list = list.order_by(orderby)[(actualpage*item_number):((actualpage*item_number)+item_number)]
    dict={
        'list':list,
        'page_number':page_number
    }
    return dict

def listActivities(request, activity_id="A1", page=1, subactivity_id=None, year=None):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }

    type = get_object_or_404(Typeactivity, pk=activity_id)
    context["type"] = type

    list = Activity.objects.filter(idtypeactivity_id=activity_id)
    if subactivity_id is not None:
        idactivity_list = Visit.objects.filter(
            idtypesubactivity=subactivity_id).values('idactivity')

        if year is not None:
            list = Activity.objects.filter(
                idtypeactivity_id=activity_id, pk__in=idactivity_list, date__year=year)
            context["year"] = year
        else:
            list = Activity.objects.filter(
                idtypeactivity_id=activity_id, pk__in=idactivity_list)

        context["subactivity_id"] = subactivity_id
    else:
        if year is not None:
            list = Activity.objects.filter(
                idtypeactivity_id=activity_id, date__year=year)
            context["year"] = year

    list = list.order_by('date')
    
    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, 8, '-date')
        page_number = dictpagination['page_number']
        activities = dictpagination['list']
        context["activities"] = activities

    min = Activity.objects.filter(
        idtypeactivity=activity_id).aggregate(Min('date'))
    max = Activity.objects.filter(
        idtypeactivity=activity_id).aggregate(Max('date'))
    context["years"] = range(min['date__min'].year, max['date__max'].year+1)
    context["page_number"] = range(1, page_number+1)

    return render(request, "admin/listActivities.html", context)


def _delete_file(path, location):
    """ Deletes file from filesystem. """
    path = 'static/'+location+path
    if os.path.isfile(path):
        os.remove(path)


def deleteActivity(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'POST':
            id_activity = request.POST.get('id_activity', '')
            try:
                activity = Activity.objects.get(pk=id_activity)
                for activityimage in activity.activityimage_set.all():
                    _delete_file(activityimage.image, 'images/site/')
                activity.delete()
            except KeyError:
                return HttpResponseBadRequest('Error')
            else:
                return JsonResponse({'success': 'Activity successfully deleted.'})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

def setAttributeByRequestParams(request,params,model):
    values = [request.POST.get(p) for p in params]
    i = 0
    for value in values:
        if value != "":
            setattr(model, params[i], value)
        i += 1

def updateAttributeByRequestParams(request,params,model):
    countChange = 0
    values = [request.POST.get(p) for p in params]
    i = 0
    for value in values:
        if value != str(getattr(model, params[i])):
            if value == "":
                value = None
            setattr(model, params[i], value)
            countChange += 1
        i += 1
    return countChange
        
def addActivity(request, idtypeactivity='A1'):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }

    type = get_object_or_404(Typeactivity, pk=idtypeactivity)
    context["type"] = type
    context["persons"] = Person.objects.all().order_by('name')
    context["institutions"] = Institution.objects.all().order_by('name')
    context["departments"] = Department.objects.all().order_by('name')
    context["typevisit"] = Typesubactivity.objects.all()
    context["locations"] = Location.objects.all().order_by('name')

    if request.method == 'POST':
        if request.POST['idtypeactivity'] == "" or request.POST['title'] == "":
            context["error"] = "Fields 'Type of activity' and 'Title' are required."
            return render(request, "admin/addActivity.html", context)

        typeactivity = Typeactivity.objects.get(
            pk=request.POST['idtypeactivity'])
        context["type"] = typeactivity

        if request.POST['idtypeactivity'] == 'A1':
            if request.POST['idlocation'] == "" or request.POST['idtypesubactivity'] == "":
                context["error"] = "Fields 'Type of visit' and 'Location' are required."
                return render(request, "admin/addActivity.html", context)

        activity = Activity(idtypeactivity=typeactivity,
                            title=request.POST['title'])

        names = ['description', 'date', 'note']
        setAttributeByRequestParams(request,names, activity)

        activity.save()

        lastActivity = Activity.objects.last()
        data = request.POST.items()
        for keys, values in data:
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
                image = Activityimage(image=renameFile(
                    f.name), idactivity=lastActivity)
                image.save()
                handle_uploaded_file(f, 'images/site/')

        if request.POST['idtypeactivity'] == 'A1':  # if activity is visit
            visit = Visit(idactivity=lastActivity, idlocation=Location.objects.get(
                pk=request.POST['idlocation']), idtypesubactivity=Typesubactivity.objects.get(pk=request.POST['idtypesubactivity']))
            if (request.POST['dateend'] != ""):
                visit.dateend = request.POST['dateend']
            visit.save()
            if request.POST['idtypesubactivity'] == 'SA2':  # if field school
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
                        print('fsidinst'+str(i)+" = "+valueInst)
                        setattr(fs, 'idinst',
                                Institution.objects.get(pk=valueInst))
                    if valueDept != "":
                        print('fsiddept'+str(i)+" = "+valueDept)
                        setattr(fs, 'iddept',
                                Department.objects.get(pk=valueDept))
                    fs.save()

        context["success"] = "New "+typeactivity.type+" inserted successfully."

    return render(request, "admin/addActivity.html", context)


def renameFile(file):
    file = file.replace(" ", "_")
    unaccented_string = unidecode.unidecode(file)
    return unaccented_string


def handle_uploaded_file(f, location):
    with open('static/'+location+renameFile(f.name), 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)


def addPerson(request):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }
    if request.method == 'POST':
        person = Person(
            title=request.POST['title'], name=request.POST['name'], username=request.POST['username'])
        person.save()
        context["success"] = "New person inserted successfully."
    return render(request, "admin/addPerson.html", context)


def addInstitution(request):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }
    if request.method == 'POST':
        nextId = get_next_value("institution")
        nextId = "I"+str(nextId)
        inst = Institution(id=nextId, name=request.POST['name'])
        inst.save()
        context["success"] = "New institution inserted successfully."
    return render(request, "admin/addInstitution.html", context)


def addLocation(request):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }
    if request.method == 'POST':
        if request.POST['name'] == "" or request.POST['longitude'] == "" or request.POST['latitude'] == "":
            context["error"] = "All fields are required."
            return render(request, "admin/addLocation.html", context)
        location = Location(
            name=request.POST['name'], longitude=request.POST['longitude'], latitude=request.POST['latitude'])
        location.save()
        context["success"] = "New location inserted successfully."
    return render(request, "admin/addLocation.html", context)


def updateActivity(request, activity_id=1):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }

    activity = get_object_or_404(Activity, pk=activity_id)
    context["activity"] = activity
    context["persons"] = Person.objects.all().order_by('name')
    context["institutions"] = Institution.objects.all().order_by('name')
    context["departments"] = Department.objects.all().order_by('name')
    context["typevisit"] = Typesubactivity.objects.all()
    context["locations"] = Location.objects.all().order_by('name')

    visit = None
    if activity.idtypeactivity.id == 'A1':
        visit = activity.visit_set.get()
        context['visit'] = visit
        if visit.idtypesubactivity.id == 'SA2':
            context['fieldschool'] = visit.fieldschool_set.all()

    countChange = 0
    countChangeActivity = 0
    if request.method == 'POST':
        if request.POST['idtypeactivity'] != activity.idtypeactivity.id:
            activity.idtypeactivity = Typeactivity.objects.get(
                pk=request.POST['idtypeactivity'])
            countChangeActivity += 1

        params = ['title', 'description', 'date', 'note']
        countChangeActivity += updateAttributeByRequestParams(request,params, activity)
    
        if countChangeActivity > 0:
            countChange += 1
            activity.save()
            context["activity"] = activity

        if request.FILES:
            files = request.FILES.getlist('files')
            for f in files:
                image = Activityimage(image=renameFile(
                    f.name), idactivity=activity)
                image.save()
                handle_uploaded_file(f, 'images/site/')
            countChange += 1

        if len(request.POST.getlist("supprImage")) > 0:
            img_ids = request.POST.getlist("supprImage")
            for img_id in img_ids:
                activityimage = Activityimage.objects.get(pk=img_id)
                _delete_file(activityimage.image, 'images/site/')
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
            if 'fkidperson' in keys:
                actpers = Activityperson(
                    idactivity=activity, idperson=Person.objects.get(pk=values))
                actpers.save()
            if 'fkidinst' in keys:
                actpers = Activityinstitution(
                    idactivity=activity, idinst=Institution.objects.get(pk=values))
                actpers.save()

        if 'visit' in context:
            if request.POST['idtypesubactivity'] != str(visit.idtypesubactivity.id):
                visit.idtypesubactivity = Typesubactivity.objects.get(
                    pk=request.POST['idtypesubactivity'])
                countChangeVisit += 1
                countChange += 1

            if request.POST['idlocation'] != str(visit.idlocation.id):
                visit.idlocation = Location.objects.get(
                    pk=request.POST['idlocation'])
                countChangeVisit += 1
                countChange += 1

            if request.POST['dateend'] != str(visit.dateend):
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
                    if 'fsidinst' in keys or 'fsiddept' in keys:
                        fsnumber += 1

                fsnumber = int(fsnumber/2)
                for i in range(0, fsnumber):
                    fs = Fieldschool(idvisit=Visit.objects.last())
                    valueInst = request.POST.get('fsidinst'+str(i))
                    valueDept = request.POST.get('fsiddept'+str(i))
                    if valueInst != "":
                        print('fsidinst'+str(i)+" = "+valueInst)
                        setattr(fs, 'idinst',
                                Institution.objects.get(pk=valueInst))
                    if valueDept != "":
                        print('fsiddept'+str(i)+" = "+valueDept)
                        setattr(fs, 'iddept',
                                Department.objects.get(pk=valueDept))
                    fs.save()

        if countChangeVisit > 0:
            context['visit'] = visit
            visit.save()


        if countChange > 0:
            context["success"] = "Activity updated successfully."
        else:
            context["success"] = "There is nothing to change."

    return render(request, "admin/updateActivity.html", context)


# --------------------------- PUBLICATIONS ------------------------------

def listPublications(request, pub_id=1, page=1, year=None):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }

    type = get_object_or_404(Typepublication, pk=pub_id)
    context["type"] = type

    list = Publication.objects.filter(idtype=pub_id)

    if year is not None:
        list = Publication.objects.filter(idtype=1, date__year=year)
        context["year"] = year

    list = list.order_by('date')

    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, 8, '-date')
        page_number = dictpagination['page_number']
        publications = dictpagination['list']
        context["publications"] = publications

    min = Publication.objects.filter(idtype=pub_id).aggregate(Min('date'))
    max = Publication.objects.filter(idtype=pub_id).aggregate(Max('date'))
    context["years"] = range(min['date__min'].year, max['date__max'].year+1)
    context["page_number"] = range(1, page_number+1)

    return render(request, "admin/listPublications.html", context)


def publicationPdfLocation(publication):
    folder = renameFile(publication.idtype.type)
    path = folder+"/"
    return path


def addPublication(request, idtypepublication=1):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }

    type = get_object_or_404(Typepublication, pk=idtypepublication)
    context["type"] = type
    context["persons"] = Person.objects.all().order_by('name')

    if request.method == 'POST':

        if request.POST['idtype'] == "" or request.POST['title'] == "":
            context["error"] = "Fields 'Type' and 'Title' are required."
            return render(request, "admin/addPublication.html", context)

        typepub = Typepublication.objects.get(
            pk=request.POST['idtype'])
        context["type"] = typepub

        publication = Publication(idtype=typepub, title=request.POST['title'])

        

        names = ['description', 'date']
        setAttributeByRequestParams(request,names, publication)
        
        if request.FILES:
            if request.FILES.getlist('imagefront'):
                front = request.FILES.getlist('imagefront')[0]
                publication.imagefront = renameFile(front.name)
                handle_uploaded_file(front, 'images/publication/')
            if request.FILES.getlist('imageback'):
                back = request.FILES.getlist('imageback')[0]
                publication.imageback = renameFile(back.name)
                handle_uploaded_file(back, 'images/publication/')

        publication.save()
        context["success"] = "New publication inserted successfully."

        lastPublication = Publication.objects.last()

        fkarticlenumber = 0
        data = request.POST.items()
        for keys, values in data:
            if 'fkidperson' in keys:
                pubauth = Publicationauthor(
                    idpublication=lastPublication, idperson=Person.objects.get(pk=values))
                pubauth.save()
            if 'fknamearticle' in keys:
                fkarticlenumber += 1

        for i in range(0, fkarticlenumber):
            pd = Publicationdetail(idpublication=lastPublication)
            name = request.POST.get('fknamearticle'+str(i))

            if name != "":
                pd.name = name

            if request.FILES:
                if request.FILES.getlist('fkpdfarticle'+str(i)):
                    pdf = request.FILES.getlist('fkpdfarticle'+str(i))[0]
                    pd.pdf = renameFile(pdf.name)
                    path = publicationPdfLocation(lastPublication)

                    handle_uploaded_file(pdf, 'pdf/'+path)

            if pd.name is not None and pd.pdf is not None:
                pd.save()

    return render(request, "admin/addPublication.html", context)


def updatePublication(request, pub_id=1):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }

    publication = get_object_or_404(Publication, pk=pub_id)
    context["publication"] = publication
    context["persons"] = Person.objects.all().order_by('name')

    countChange = 0
    countChangePublication = 0
    if request.method == 'POST':
        if request.POST['idtype'] != str(publication.idtype.id):
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
                _delete_file(publication.imagefront, 'images/publication/')
                publication.imagefront = renameFile(front.name)
                handle_uploaded_file(front, 'images/publication/')
                countChangePublication += 1
            if request.FILES.getlist('imageback'):
                back = request.FILES.getlist('imageback')[0]
                _delete_file(publication.imageback, 'images/publication/')
                publication.imageback = renameFile(back.name)
                handle_uploaded_file(back, 'images/publication/')
                countChangePublication += 1

        fkarticlenumber = 0
        data = request.POST.items()
        for keys, values in data:
            if 'fkidperson' in keys:
                pubauth = Publicationauthor(
                    idpublication=publication, idperson=Person.objects.get(pk=values))
                pubauth.save()
            if 'fknamearticle' in keys:
                fkarticlenumber += 1

        for i in range(0, fkarticlenumber):
            pd = Publicationdetail(idpublication=publication)
            name = request.POST.get('fknamearticle'+str(i))
            if name != "":
                pd.name = name

            if request.FILES:
                if request.FILES.getlist('fkpdfarticle'+str(i)):
                    pdf = request.FILES.getlist('fkpdfarticle'+str(i))[0]
                    pd.pdf = renameFile(pdf.name)
                    path = publicationPdfLocation(publication)

                    handle_uploaded_file(pdf, 'pdf/'+path)

            if pd.name is not None and pd.pdf is not None:
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
                    path = publicationPdfLocation(publication)
                    _delete_file(pubdetailtodelete.pdf, 'pdf/' + path)
                pubdetailtodelete.delete()
            countChange += 1

        if countChangePublication > 0:
            countChange += 1
            publication.save()
        if countChange > 0:
            context["success"] = "Publication updated successfully."
        else:
            context["success"] = "There is nothing to change."

    return render(request, "admin/updatePublication.html", context)


def deletePublication(request, pub_id=None):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'POST':
            id_publication = request.POST.get('id_pub', '')
            try:
                publication = Publication.objects.get(pk=id_publication)
                if publication.imagefront:
                    _delete_file(publication.imagefront, 'images/publication/')
                if publication.imageback:
                    _delete_file(publication.imageback, 'images/publication/')

                pubDetails = Publicationdetail.objects.filter(
                    idpublication=publication.id)
                for det in pubDetails:
                    path = publicationPdfLocation(publication)
                    _delete_file(det.pdf, 'pdf/' + path)

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
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }
    type = get_object_or_404(Typemember, pk=typemember_id)
    context["type"] = type

    list = Member.objects.filter(idtypemember=typemember_id)

    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, 8, 'idperson__name')
        page_number = dictpagination['page_number']
        members = dictpagination['list']
        context["members"] = members


    context["page_number"] = range(1, page_number+1)

    return render(request, "admin/listMembers.html", context)

def addMember(request,typemember_id=1):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }
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
                print(str(w)+", "+str(h))
                if w!=h:
                    context['imageError']="Recommended size : 1080 x 1080 pixels"
                    return render(request, "admin/addMember.html", context)
                member.image = renameFile(imageFile.name)
                handle_uploaded_file(imageFile, 'images/members/')

        member.save()

        lastMember = Member.objects.last()
        fkmembernumber = 0
        data = request.POST.items()
        for keys, values in data:
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
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }
    member = get_object_or_404(Member, pk=member_id)
    context['member'] = member
    context['posts']=Post.objects.all().order_by('name')
    context['insts']= Institution.objects.all().order_by('name')
    context['depts']=Department.objects.all().order_by('name')


    countChange = 0
    countChangeMember = 0
    if request.method == 'POST':
        if request.POST['idtypemember'] != str(member.idtypemember.id):
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
                if w!=h:
                    context['imageError']="Recommended size : 1080 x 1080 pixels"
                    return render(request, "admin/updateMember.html", context)
                _delete_file(member.image, 'images/members/')
                member.image = renameFile(imageFile.name)
                handle_uploaded_file(imageFile, 'images/members/')
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
            context["success"] = "There is nothing to change."
            
    return render(request, "admin/updateMember.html", context)

def deleteMember(request, member_id=None):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'POST':
            member_id = request.POST.get('member_id', '')
            try:
                member = Member.objects.get(pk=member_id)
                if member.image:
                    _delete_file(member.image, 'images/members/')
                member.delete()

            except KeyError:
                return HttpResponseBadRequest('Error')
            else:
                return JsonResponse({'success': 'Publication successfully deleted.'})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

# ---------------------------------------PARTNERS------------------------------------------
def listPartners(request,page=1):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }

    list = Partner.objects.all()
    page_number=0
    if (list.count() > 0):
        dictpagination = pagination(page, list, 8, 'idinst__name')
        page_number = dictpagination['page_number']
        partners = dictpagination['list']
        context["partners"] = partners

    context["page_number"] = range(1, page_number+1)

    return render(request, "admin/listPartners.html", context)

def addPartner(request):
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }
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
                partner.logo = renameFile(file.name)
                handle_uploaded_file(file, 'images/partners/')
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
    context = {
        "type_publication": type_publication,
        "type_activity": type_activity,
        "type_member": type_member,
    }
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
                _delete_file(partner.logo, 'images/partners/')
                partner.logo = renameFile(imageFile.name)
                handle_uploaded_file(imageFile, 'images/partners/')
                countChangePartner += 1
                countChange += 1
        
        if countChangePartner>0:
            countChange +=1
            partner.save()
        if countChange > 0:
            context["success"] = "Member's informations updated successfully."
        else:
            context["success"] = "There is nothing to change."
            
    return render(request, "admin/updatePartner.html", context)

def deletePartner(request,partner_id=None):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method=="POST": 
            partner_id = request.POST.get('partner_id', '')
            try:
                partner = Partner.objects.get(pk=partner_id)
                if partner.logo:
                    _delete_file(partner.logo, 'images/partners/')
                partner.delete()

            except KeyError:
                return HttpResponseBadRequest('Error')
            else:
                return JsonResponse({'success': 'Publication successfully deleted.'})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')
