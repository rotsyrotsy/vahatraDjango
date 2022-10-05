from django.urls import path, re_path
from . import views
from django.contrib.staticfiles.storage import staticfiles_storage
from django.views.generic.base import RedirectView
from django.conf import settings

app_name = "association"
urlpatterns = [
    path("", views.index, name="index"),
    path("favicon.ico",RedirectView.as_view(url=staticfiles_storage.url("favicon.ico"))),
    path("contactpage", views.contactpage, name="contactpage"),
    path("member/<int:type_member_id>", views.member, name="member"),
    path("member/<int:type_member_id>/page-<int:page>", views.member, name="member"),
    path("contact", views.contact, name="contact"),
    path("financing", views.financing, name="financing"),
    path("gallery", views.gallery, name="gallery"),
    path("searchMember/<int:type_member_id>", views.searchMember, name="searchMember"),
    path("searchMember/<int:type_member_id>/<str:keyword>/page-<int:page>", views.searchMember, name="searchMember"),

]
