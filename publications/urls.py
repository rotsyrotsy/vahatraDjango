from django.urls import path
from . import views

app_name = "publications"
urlpatterns = [
    path("", views.index, name="index"),
    path("<str:typepublication_id>", views.index, name="index"),
    path("detail/", views.detail, name="detail"),
]
