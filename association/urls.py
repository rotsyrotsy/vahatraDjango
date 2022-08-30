from django.urls import path, re_path
from . import views

from django.views.generic.base import RedirectView
from django.conf import settings

app_name = "association"
urlpatterns = [
    path("", views.index, name="index"),
    path("favicon.ico",RedirectView.as_view(url=settings.STATIC_URL+"favicon.ico")),
    path("contactpage/", views.contactpage, name="contactpage"),
    path("member/<int:type_member_id>", views.member, name="member"),
    path("member/<int:type_member_id>/page/<int:page>", views.member, name="member"),
    path("contact/", views.contact, name="contact"),
    path("financing/", views.financing, name="financing"),
    path("gallery/", views.gallery, name="gallery"),

]
