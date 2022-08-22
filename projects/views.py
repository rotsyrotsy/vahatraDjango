from django.shortcuts import get_object_or_404, render, get_list_or_404
from activities.models import Typevisite
from projects.models import  Project,Projectintervenant, Projectwithpartners
from math import ceil

from publications.models import Typepublication

# Create your views here.

type_visit = Typevisite.objects.all
type_pub = Typepublication.objects.all
context = {
        "type_visit" : type_visit,
        "type_pub": type_pub,
        }

def index(request,page=1):
        page -= 1
        page_number = Project.objects.all().count()
        page_number = ceil(page_number/6)

        projects = Projectwithpartners.objects.all().order_by('-year')[(page*6):((page*6)+6)]

        context["projects"]= projects
        context["page_number"]= range(1,page_number+1)
        return render(request, "projects/index.html", context)

def projectDetail(request, project_id):
        project = get_object_or_404(Projectwithpartners, pk=project_id)
        context["project"]= project
        return render(request, "projects/projectDetail.html", context)
