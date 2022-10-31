from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

app_name = "admin"
urlpatterns = [
    path("saveChanges", views.saveChanges, name="saveChanges"),
    path("", views.index, name="index"),
    path("login", views.my_login, name="my_login"),
    path("logout", views.my_logout, name="my_logout"),
    path("reset_password_verify", views.reset_password_verify, name="reset_password_verify"),
    path("reset_password_verify/<str:mail>", views.reset_password_verify, name="reset_password_verify"),
    path("reset_password", views.reset_password, name="reset_password"),
    path("listActivities/<str:activity_id>", views.listActivities, name="listActivities"),
    path("listActivities/<str:activity_id>/page-<int:page>", views.listActivities, name="listActivities"),
    path("listActivities/<str:activity_id>/sub-activity-<str:subactivity_id>/page-<int:page>", views.listActivities, name="listActivities"),
    path("listActivities/<str:activity_id>/sub-activity-<str:subactivity_id>/year-<int:year>/page-<int:page>", views.listActivities, name="listActivities"),
    path("listActivities/<str:activity_id>/year-<int:year>/page-<int:page>", views.listActivities, name="listActivities"),
    path("deleteActivity", views.deleteActivity, name="deleteActivity"),
    path("deleteTypeSubActivity", views.deleteTypeSubActivity, name="deleteTypeSubActivity"),
    path("addActivity", views.addActivity, name="addActivity"),
    path("addActivity/<str:idtypeactivity>", views.addActivity, name="addActivity"),
    path("addTypeSubActivity/<str:idtypeactivity>", views.addTypeSubActivity, name="addTypeSubActivity"),
    path("addPerson", views.addPerson, name="addPerson"),
    path("addInstitution", views.addInstitution, name="addInstitution"),
    path("addLocation", views.addLocation, name="addLocation"),
    path("updateActivity/<str:activity_id>", views.updateActivity, name="updateActivity"),
    path("updateTypeSubActivity/<str:subactivity_id>", views.updateTypeSubActivity, name="updateTypeSubActivity"),
    path("listPublications/<str:pub_id>", views.listPublications, name="listPublications"),
    path("listPublications/<str:pub_id>/page-<int:page>", views.listPublications, name="listPublications"),
    path("listPublications/<str:pub_id>/year-<int:year>/page-<int:page>", views.listPublications, name="listPublications"),
    path("updatePublication/<str:pub_id>", views.updatePublication, name="updatePublication"),
    path("deletePublication", views.deletePublication, name="deletePublication"),
    path("addPublication", views.addPublication, name="addPublication"),
    path("addPublication/<str:idtypepublication>", views.addPublication, name="addPublication"),
    path("listMembers/<str:typemember_id>", views.listMembers, name="listMembers"),
    path("listMembers/<str:typemember_id>/page-<int:page>", views.listMembers, name="listMembers"),
    path("updateMember/<str:member_id>", views.updateMember, name="updateMember"),
    path("deleteMember", views.deleteMember, name="deleteMember"),
    path("addMember", views.addMember, name="addMember"),
    path("addMember/<str:typemember_id>", views.addMember, name="addMember"),
    path("listPartners", views.listPartners, name="listPartners"),
    path("listPartners/page-<int:page>", views.listPartners, name="listPartners"),
    path("addPartner", views.addPartner, name="addPartner"),
    path("updatePartner/<str:partner_id>", views.updatePartner, name="updatePartner"),
    path("deletePartner", views.deletePartner, name="deletePartner"),
    path("listImages", views.listImages, name="listImages"),
    path("listImages/<str:image_type>", views.listImages, name="listImages"),
    path("addImage", views.addImage, name="addImage"),
    path("addImage/<str:image_type>", views.addImage, name="addImage"),
    path("deleteImage", views.deleteImage, name="deleteImage"),
    path("updateImage/<str:image_id>", views.updateImage, name="updateImage"),
    path("deletePerson", views.deletePerson, name="deletePerson"),
    path("listTypeActivity", views.listTypeActivity, name="listTypeActivity"),
    path("listTypePublication", views.listTypePublication, name="listTypePublication"),
    path("addTypePublication", views.addTypePublication, name="addTypePublication"),
    path("updateTypePublication/<str:type_id>", views.updateTypePublication, name="updateTypePublication"),
    path("deleteTypePublication", views.deleteTypePublication, name="deleteTypePublication"),
    path("listTypeMember", views.listTypeMember, name="listTypeMember"),
    path("addTypeMember", views.addTypeMember, name="addTypeMember"),
    path("updateTypeMember/<str:type_id>", views.updateTypeMember, name="updateTypeMember"),
    path("deleteTypeMember", views.deleteTypeMember, name="deleteTypeMember"),
    path("listTypePhoto", views.listTypePhoto, name="listTypePhoto"),
    path("addTypeActivity", views.addTypeActivity, name="addTypeActivity"),
    path("updateTypeActivity/<str:type_id>", views.updateTypeActivity, name="updateTypeActivity"),
    path("deleteTypeActivity", views.deleteTypeActivity, name="deleteTypeActivity"),
]