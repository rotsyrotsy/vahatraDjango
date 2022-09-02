from django.urls import path
from . import views

app_name = "admin"
urlpatterns = [
    path("", views.index, name="index"),
    path("login/", views.login, name="login"),
    path("logout/", views.logout, name="logout"),
    path("reset_password/", views.reset_password, name="reset_password"),
    path("list/<str:activity_id>", views.list, name="list"),
    path("list/<str:activity_id>/page-<int:page>", views.list, name="list"),
    path("list/<str:activity_id>/sub-activity-<str:subactivity_id>/page-<int:page>", views.list, name="list"),
    path("list/<str:activity_id>/sub-activity-<str:subactivity_id>/year-<int:year>/page-<int:page>", views.list, name="list"),
    path("list/<str:activity_id>/year-<int:year>/page-<int:page>", views.list, name="list"),

]
