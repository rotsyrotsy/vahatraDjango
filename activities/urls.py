from django.urls import path, re_path
from . import views

app_name = "activities"
urlpatterns = [
    path("", views.index, name="index"),
    path("visit/<str:typesubactivity_id>", views.index, name="index"),
    path("visit/lieu/", views.visit_by_lieu, name="visit_by_lieu"),
    path("support/", views.support, name="support"),
    path("type/<str:typeactivity_id>", views.otherActivity, name="otherActivity"),
    path("type/<str:typeactivity_id>/page/<int:page>", views.otherActivity, name="otherActivity"),
    path("<str:activity_type>/<int:activity_id>", views.activityDetail, name="activityDetail"),
    path("collection/", views.collection, name="collection"),
    path("ajaxActivityDetail/", views.ajaxActivityDetail, name="ajaxActivityDetail"),
]
