from django.urls import path
from . import views

app_name = "admin"
urlpatterns = [
    path("", views.index, name="index"),
    path("login/", views.login, name="login"),
    path("logout/", views.logout, name="logout"),
    path("reset_password/", views.reset_password, name="reset_password"),
    path("crud/<str:activity_id>", views.crud, name="crud"),
]
