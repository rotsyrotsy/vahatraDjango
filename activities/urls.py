from django.urls import path, re_path
from . import views

app_name = "activities"
urlpatterns = [
    path("", views.index, name="index"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>", views.index, name="index"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>/<str:typesubactivity_id>/<str:typesubactivity_name>", views.index, name="index"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>/page-<int:page>", views.index, name="index"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>/<str:typesubactivity_id>/<str:typesubactivity_name>/page-<int:page>", views.index, name="index"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>/<int:max>-<int:min>", views.index, name="index"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>/<str:typesubactivity_id>/<str:typesubactivity_name>/<int:max>-<int:min>", views.index, name="index"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>/<int:max>-<int:min>/page-<int:page>", views.index, name="index"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>/<str:typesubactivity_id>/<str:typesubactivity_name>/<int:max>-<int:min>/page-<int:page>", views.index, name="index"),
    path("lieu", views.visit_by_lieu, name="visit_by_lieu"),
    path("support", views.support, name="support"),
    path("collection-room", views.collection, name="collection"),
    path("ajaxActivityDetail", views.ajaxActivityDetail, name="ajaxActivityDetail"),
    path("atlas", views.atlas, name="atlas"),
    re_path(r'^(?P<slug>[\w+-/]+)', views.activityDetail, name="activityDetail"),
]
