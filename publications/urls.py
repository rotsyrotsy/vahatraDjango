from django.urls import path,re_path
from . import views

app_name = "publications"
urlpatterns = [
    path("", views.index, name="index"),
    path("<str:typepublication_id>/<str:typepublication_name>", views.index, name="index"),
    path("detail", views.detail, name="detail",),
    path("search", views.search, name="search"),
    path("search/<str:keyword>/page-<int:page>", views.search, name="search"),
    path("multicriteriasearch", views.multicriteriasearch, name="multicriteriasearch"),
    path("download_pdf_file/<str:location>", views.download_pdf_file, name="download_pdf_file"),
    re_path(r'^download_pdf_file/(?P<location>\w+)/(?P<filename>[\w+-/-&]+)', views.download_pdf_file, name="download_pdf_file"),
]
