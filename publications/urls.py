from django.urls import path
from . import views

app_name = "publications"
urlpatterns = [
    path("", views.index, name="index"),
    path("<str:typepublication_name>/<str:typepublication_id>", views.index, name="index"),
    path("detail/", views.detail, name="detail"),
    path("search/", views.search, name="search"),
    path("search/<str:keyword>/page-<int:page>", views.search, name="search"),
    path("multicriteriasearch/", views.multicriteriasearch, name="multicriteriasearch"),

]
