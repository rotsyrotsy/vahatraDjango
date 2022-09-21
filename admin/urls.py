from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

app_name = "admin"
urlpatterns = [
    path("", views.index, name="index"),
    path("login/", views.login, name="login"),
    path("logout/", views.logout, name="logout"),
    path("reset_password/", views.reset_password, name="reset_password"),
    path("listActivities/<str:activity_id>", views.listActivities, name="listActivities"),
    path("listActivities/<str:activity_id>/page-<int:page>", views.listActivities, name="listActivities"),
    path("listActivities/<str:activity_id>/sub-activity-<str:subactivity_id>/page-<int:page>", views.listActivities, name="listActivities"),
    path("listActivities/<str:activity_id>/sub-activity-<str:subactivity_id>/year-<int:year>/page-<int:page>", views.listActivities, name="listActivities"),
    path("listActivities/<str:activity_id>/year-<int:year>/page-<int:page>", views.listActivities, name="listActivities"),
    path("deleteActivity/", views.deleteActivity, name="deleteActivity"),
    path("addActivity/", views.addActivity, name="addActivity"),
    path("addActivity/<str:idtypeactivity>", views.addActivity, name="addActivity"),
    path("addPerson/", views.addPerson, name="addPerson"),
    path("addInstitution/", views.addInstitution, name="addInstitution"),
    path("addLocation/", views.addLocation, name="addLocation"),
    path("updateActivity/<str:activity_id>", views.updateActivity, name="updateActivity"),
    path("listPublications/<str:pub_id>", views.listPublications, name="listPublications"),
    path("listPublications/<str:pub_id>/page-<int:page>", views.listPublications, name="listPublications"),
    path("listPublications/<str:pub_id>/year-<int:year>/page-<int:page>", views.listPublications, name="listPublications"),
    path("updatePublication/<str:pub_id>", views.updatePublication, name="updatePublication"),
    path("deletePublication/", views.deletePublication, name="deletePublication"),
    path("addPublication/", views.addPublication, name="addPublication"),
    path("addPublication/<str:idtypepublication>", views.addPublication, name="addPublication"),
    
]