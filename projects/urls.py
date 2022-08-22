from django.urls import path
from . import views

app_name = "projects"
urlpatterns = [
    path("", views.index, name="index"),
    path("page/<int:page>", views.index, name="index"),
    path("<int:project_id>", views.projectDetail, name="projectDetail"),
]
