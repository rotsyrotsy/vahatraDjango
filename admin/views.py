
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.http import  HttpResponseRedirect
from admin.models import Administrator
from django.shortcuts import render, HttpResponse
from django.contrib.auth.hashers import make_password, check_password


def index(request):
    return render(request, "admin/index.html")

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
            return HttpResponseRedirect(reverse("admin:index"))
    else:
        return render(request, "admin/login.html")

