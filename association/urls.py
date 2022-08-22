from django.urls import path, re_path
from . import views

app_name = "association"
urlpatterns = [
    path("", views.index, name="index"),
    path("contactpage/", views.contactpage, name="contactpage"),
    path("member/<int:type_member_id>", views.member, name="member"),
    path("member/<int:type_member_id>/page/<int:page>", views.member, name="member"),
    path("contact/", views.contact, name="contact"),
    path("financing/", views.financing, name="financing"),
    path("portfolio/", views.portfolio, name="portfolio"),

]
