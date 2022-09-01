
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.http import  HttpResponseRedirect
from activities.models import Activity, Typeactivity,Activityinstitution,Visit
from admin.models import Administrator
from django.shortcuts import render, HttpResponse
from django.contrib.auth.hashers import make_password, check_password
from django.core.mail import send_mail,EmailMessage

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

def crud(request,activity_id="A1"):
    type = get_object_or_404(Typeactivity,pk=activity_id)
    context["type"]=type
    activities = type.activity_set.all()
    for activity in activities:
        
        print(activity.visit_set.get(idactivity=activity.id).idlocation.name)
        # for visit in activity.visit_set.all():
        #     print(visit[0].idlocation.name)
    return render(request, "admin/list.html",context)
