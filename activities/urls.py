from django.urls import path, re_path
from . import views

app_name = "activities"
urlpatterns = [
    path("", views.index, name="index"),
    path("<str:typevisite_id>", views.index, name="index"),
    path("visit/", views.visit_by_lieu, name="visit_by_lieu"),
    path("support/", views.support, name="support"),
    path("conference/", views.conference, name="conference"),
    path("conference/page/<int:page>", views.conference, name="conference"),
    path("research/", views.research, name="research"),
    path("research/page/<int:page>", views.research, name="research"),
    path("research/<int:research_id>", views.researchDetail, name="researchDetail"),
    path("collection/", views.collection, name="collection"),
    path("ajaxVisitDetail/", views.ajaxVisitDetail, name="ajaxVisitDetail"),
    path("ajaxResearchDetail/", views.ajaxResearchDetail, name="ajaxResearchDetail"),
    path("ajaxConferenceDetail/", views.ajaxConferenceDetail, name="ajaxConferenceDetail"),


]
