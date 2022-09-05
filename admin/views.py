
from urllib import request
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.http import  HttpResponseRedirect, JsonResponse, HttpResponseBadRequest
from activities.models import Activity, Activityperson, Typeactivity,Activityinstitution,Visit
from admin.models import Administrator
from django.shortcuts import render, HttpResponse
from django.contrib.auth.hashers import make_password, check_password
from django.core.mail import send_mail,EmailMessage
from django.db.models import Min,Max
from math import ceil
from sequences import get_next_value
from django.core.files.storage import FileSystemStorage
from django.templatetags.static import static
from association.models import Institution, Person

type_activity = Typeactivity.objects.all()
context = {
        "type_activity" : type_activity,
        }

def index(request):
    if 'admin' not in request.session:
        return HttpResponseRedirect(reverse("admin:login"))
    else:
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
    if 'subactivity_id' in context:
        del context['subactivity_id']
    if 'year' in context:
        del context['year']

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
    context["years"]=range(min['date__min'].year,max['date__max'].year)
    context["page_number"]= range(1,page_number+1)

    return render(request, "admin/list.html",context)

def deleteActivity(request):
    is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

    if is_ajax:
        if request.method == 'POST':
            id_activity = request.POST.get('id_activity','')
            try:
                Activity.objects.get(pk=id_activity).delete()
            except KeyError:
                return HttpResponseBadRequest('Error')
            else:
                return JsonResponse({'success':'Activity successfully deleted.'})
        return JsonResponse({'status': 'Invalid request'}, status=400)
    else:
        return HttpResponseBadRequest('Invalid request')

def addActivity(request,type_activity='A1'):
    type = get_object_or_404(Typeactivity,pk=type_activity)
    context["type"]=type
    context["persons"]=Person.objects.all()
    context["institutions"]=Institution.objects.all()
    if request.method == 'POST':
        
        if request.POST['idtypeactivity']=="" or request.POST['title']=="":
            context["error"]="Fields 'Type of activity' and 'Title' are required."
            return render(request, "admin/addActivity.html",context)

        activity = Activity(idtypeactivity=Typeactivity.objects.get(pk=request.POST['idtypeactivity']),title=request.POST['title'])
        
        names = ['description', 'date', 'note']
        values = [request.POST.get(p) for p in names]

        for i, value in enumerate([v for v in values if v]):
            setattr(activity, names[i],value)

        # activity.save()

        lastActivity = Activity.objects.last()
        data = request.POST.items()
        for keys, values in data:
            if 'fkidperson' in keys:
                actpers = Activityperson(idactivity = lastActivity, idperson = Person.objects.get(pk=values))
                # actpers.save()
            if 'fkidinst' in keys:
                actpers = Activityinstitution(idactivity = lastActivity, idinst = Institution.objects.get(pk=values))
                # actpers.save()

        if request.FILES:
            files = request.FILES.getlist('files')
            print(files)
            for f in files:
                myfile = request.FILES['myfile']
                fs = FileSystemStorage(location=static('images/')) #defaults to   MEDIA_ROOT  
                filename = fs.save(myfile.name, myfile)
                file_url = fs.url(filename)
                return render(request, 'upload.html', {
                    'file_url': file_url
                })
        context["success"]="New activity inserted successfully to the database."

        

    return render(request, "admin/addActivity.html",context)



def addPerson(request):
    if request.method == 'POST':
        person = Person(title=request.POST['title'], name=request.POST['name'],username=request.POST['username'])
        person.save()
        context["success"]="New person inserted successfully to the database."
    return render(request, "admin/addPerson.html",context)

def addInstitution(request):
    if request.method == 'POST':
        nextId= get_next_value("institution")
        nextId = "I"+str(nextId)
        inst = Institution(id = nextId, name=request.POST['name'])
        inst.save()
        context["success"]="New institution inserted successfully to the database."
    return render(request, "admin/addInstitution.html",context)

