from django.urls import path, re_path
from . import views

app_name = "activities"
urlpatterns = [
    path("", views.index, name="index"),
    path("visit/<str:typesubactivity_id>/<str:typesubactivity_name>", views.index, name="index"),
    path("visit/lieu", views.visit_by_lieu, name="visit_by_lieu"),
    path("support", views.support, name="support"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>", views.otherActivity, name="otherActivity"),
    path("list/<str:typeactivity_id>/<str:typeactivity_name>/page-<int:page>", views.otherActivity, name="otherActivity"),
    re_path(r'^(?P<slug>[\w+-/]+)', views.activityDetail, name="activityDetail"),
    path("collection-room", views.collection, name="collection"),
    path("ajaxActivityDetail", views.ajaxActivityDetail, name="ajaxActivityDetail"),
    path("atlas", views.atlas, name="atlas"),
]
