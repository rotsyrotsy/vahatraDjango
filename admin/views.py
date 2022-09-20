
from urllib import request
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.http import  HttpResponseRedirect, JsonResponse, HttpResponseBadRequest
from activities.models import Activity, Activityimage, Activityperson, Fieldschool,Typeactivity,Activityinstitution,Visit,Typesubactivity,Location
from admin.models import Administrator
from django.shortcuts import render, HttpResponse
from django.contrib.auth.hashers import make_password, check_password
from django.core.mail import send_mail,EmailMessage
from django.db.models import Min,Max
from math import ceil
from sequences import get_next_value
from association.models import Department, Institution, Person
import os

type_activity = Typeactivity.objects.all()


def index(request):
    context = {
        "type_activity" : type_activity,
    }
    if 'admin' not in request.session:
        return HttpResponseRedirect(reverse("admin:login"))
    else:
        print(request.session['admin'])
        return render(request, "admin/index.html",context)

def login(request):
    if request.method == 'POST':
        try:
            # encryptedpassword=make_password(request.POST['password'])
            # print(encryptedpassword)
            # checkpassword=check_password(request.POST['password'], encryptedpassword)
            # print(checkpassword)
            # data = Administrator(id='ADM2',username=request.POST["username"],password=encryptedpassword)
            # data.save()
            admin = Administrator.objects.get(username=request.POST["username"])
            if check_password(request.POST['password'], admin.password)==False:
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
            if len(request.POST.getlist("remember_me"))==0:
                request.session.set_expiry(0)
            request.session['admin']=admin.id
            return HttpResponseRedirect(reverse("admin:index"))
    else:
        return render(request, "admin/login.html")


def logout(request):
    try:
        del request.session['admin']
    except KeyError:
        pass
    return render(request, "admin/login.html",{"message":"You're logged out"})

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
            return render(request, "admin/reset_password.html",{"message":"We have sent you an email to change your password."})
    else:
        return render(request, "admin/reset_password.html")

def listActivities(request,activity_id="A1",page=1,subactivity_id=None, year = None):
    context = {
        "type_activity" : type_activity,
        }

    type = get_object_or_404(Typeactivity,pk=activity_id)
    context["type"]=type

    list = Activity.objects.filter(idtypeactivity_id = activity_id)
    if subactivity_id is not None:
        idactivity_list = Visit.objects.filter(idtypesubactivity=subactivity_id).values('idactivity')

        if year is not None:
            list = Activity.objects.filter(idtypeactivity_id = activity_id, pk__in = idactivity_list, date__year = year)
            context["year"]=year
        else:
            list = Activity.objects.filter(idtypeactivity_id = activity_id, pk__in = idactivity_list)
            
        context["subactivity_id"]=subactivity_id
    else:
        if year is not None:
            list = Activity.objects.filter(idtypeactivity_id = activity_id, date__year = year)
            context["year"]=year

    list = list.order_by('date')
    page_number = list.count()
    page_number = ceil(page_number/8)

    if (page>page_number): page = page_number
    elif page<1 : page = 1
    page -= 1

    
    if (list.count()>0):
        activities = list.order_by('-date')[(page*8):((page*8)+8)]
        context["activities"]=activities

    min = Activity.objects.filter(idtypeactivity=activity_id).aggregate(Min('date'))
    max = Activity.objects.filter(idtypeactivity=activity_id).aggregate(Max('date'))
    context["years"]=range(min['date__min'].year,max['date__max'].year+1)
    context["page_number"]= range(1,page_number+1)

    return render(request, "admin/list.html",context)


def _delete_file(path):
   """ Deletes file from filesystem. """
   path = 'static/images/site/'+path
   if os.path.isfile(path):
       os.remove(path)


def deleteActivity(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'POST':
            id_activity = request.POST.get('id_activity','')
            try:
                activity = Activity.objects.get(pk=id_activity)
                for activityimage in activity.activityimage_set.all():
                    _delete_file(activityimage.image)
                activity.delete()
            except KeyError:
                return HttpResponseBadRequest('Error')
            else:
                return JsonResponse({'success':'Activity successfully deleted.'})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

def addActivity(request,idtypeactivity='A1'):
    context = {
        "type_activity" : type_activity,
    }

    type = get_object_or_404(Typeactivity,pk=idtypeactivity)
    context["type"]=type
    context["persons"]=Person.objects.all().order_by('name')
    context["institutions"]=Institution.objects.all().order_by('name')
    context["departments"]=Department.objects.all().order_by('name')
    context["typevisit"]=Typesubactivity.objects.all()
    context["locations"]=Location.objects.all().order_by('name')

    if request.method == 'POST':
        if request.POST['idtypeactivity']=="" or request.POST['title']=="":
            context["error"]="Fields 'Type of activity' and 'Title' are required."
            return render(request, "admin/addActivity.html",context)
        
        typeactivity = Typeactivity.objects.get(pk=request.POST['idtypeactivity'])
        context["type"]=typeactivity
        
        if request.POST['idtypeactivity']=='A1':
            if request.POST['idlocation']==""  or request.POST['idtypesubactivity']=="":
                context["error"]="Fields 'Type of visit' and 'Location' are required."
                return render(request, "admin/addActivity.html",context)

        activity = Activity(idtypeactivity=typeactivity,title=request.POST['title'])
        
        names = ['description', 'date', 'note']
        values = [request.POST.get(p) for p in names]
        
        counter = 0
        for value in values:
            if value!="":
                setattr(activity, names[counter],value)
            counter += 1

        activity.save()

        lastActivity = Activity.objects.last()
        data = request.POST.items()
        for keys, values in data:
            if 'fkidperson' in keys:
                actpers = Activityperson(idactivity = lastActivity, idperson = Person.objects.get(pk=values))
                actpers.save()
            if 'fkidinst' in keys:
                actpers = Activityinstitution(idactivity = lastActivity, idinst = Institution.objects.get(pk=values))
                actpers.save()

        if request.FILES:
            files = request.FILES.getlist('files')
            print(files)
            for f in files:
                image = Activityimage(image=f.name, idactivity = lastActivity)
                image.save()
                handle_uploaded_file(f)
        
        
        if request.POST['idtypeactivity']=='A1': # if activity is visit
            visit = Visit(idactivity = lastActivity, idlocation = Location.objects.get(pk = request.POST['idlocation']),idtypesubactivity=Typesubactivity.objects.get(pk= request.POST['idtypesubactivity']))
            if (request.POST['dateend']!=""):
                visit.dateend = request.POST['dateend']
            visit.save()
            if request.POST['idtypesubactivity'] == 'SA2': # if field school
                fsnumber = 0
                data = request.POST.items()
                for keys, values in data:
                    if 'fsidinst' in keys or 'fsiddept' in keys:
                        fsnumber += 1

                fsnumber = int(fsnumber/2)
                for i in range(0,fsnumber):
                    fs = Fieldschool(idvisit = Visit.objects.last())
                    valueInst = request.POST.get('fsidinst'+str(i))
                    valueDept = request.POST.get('fsiddept'+str(i))
                    if valueInst!="":
                        print('fsidinst'+str(i)+" = "+valueInst)
                        setattr(fs,'idinst',Institution.objects.get(pk = valueInst))
                    if valueDept!="":
                        print('fsiddept'+str(i)+" = "+valueDept)
                        setattr(fs,'iddept',Department.objects.get(pk=valueDept))
                    fs.save()
                

        context["success"]="New "+typeactivity.type+" inserted successfully."

    return render(request, "admin/addActivity.html",context)

def handle_uploaded_file(f):
    with open('static/images/site/'+f.name, 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)

def addPerson(request):
    context = {
        "type_activity" : type_activity,
    }
    if request.method == 'POST':
        person = Person(title=request.POST['title'], name=request.POST['name'],username=request.POST['username'])
        person.save()
        context["success"]="New person inserted successfully."
    return render(request, "admin/addPerson.html",context)

def addInstitution(request):
    context = {
        "type_activity" : type_activity,
    }
    if request.method == 'POST':
        nextId= get_next_value("institution")
        nextId = "I"+str(nextId)
        inst = Institution(id = nextId, name=request.POST['name'])
        inst.save()
        context["success"]="New institution inserted successfully."
    return render(request, "admin/addInstitution.html",context)

def addLocation(request):
    context = {
        "type_activity" : type_activity,
    }
    if request.method == 'POST':
        if request.POST['name']=="" or request.POST['longitude']=="" or request.POST['latitude']=="":
            context["error"]="All fields are required."
            return render(request, "admin/addLocation.html",context)
        location = Location(name=request.POST['name'], longitude=request.POST['longitude'], latitude=request.POST['latitude'])
        location.save()
        context["success"]="New location inserted successfully."
    return render(request, "admin/addLocation.html",context)
