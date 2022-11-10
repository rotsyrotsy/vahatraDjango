from django.urls import path, re_path
from . import views
from django.contrib.staticfiles.storage import staticfiles_storage
from django.views.generic.base import RedirectView
from django.conf import settings


app_name = "association"
urlpatterns = [
    path("", views.index, name="index"),
    path("favicon.ico",RedirectView.as_view(url=staticfiles_storage.url("favicon.ico"))),
    path("<int:type_member_id>/<str:type_member_name>", views.member, name="member"),
    path("<int:type_member_id>/<str:type_member_name>/page-<int:page>", views.member, name="member"),
    path("<int:type_member_id>/<str:type_member_name>/<str:keyword>/page-<int:page>", views.member, name="member"),
    path("contact", views.contact, name="contact"),
    path("financing", views.financing, name="financing"),
    path("gallery", views.gallery, name="gallery"),
    path("gallery/show-more-<str:limit>", views.gallery, name="gallery"),
    path("annual-reports/", views.reports, name="reports"),
    path("annual-reports/<int:year>", views.reports, name="reports"),
    path("annual-reports/page-<int:page>", views.reports, name="reports"),
    path("annual-reports/<int:year>/page-<int:page>", views.reports, name="reports"),
]
