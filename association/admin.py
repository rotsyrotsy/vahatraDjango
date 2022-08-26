from django.contrib import admin
from parler.admin import TranslatableAdmin
from django.contrib.auth.models import Group
from .models import  Image
from django.urls import path
from django.http import HttpResponseRedirect
from django.utils.html import format_html

# admin.site.register(Memberviewposts, TranslatableAdmin)

class ImageAdmin(admin.ModelAdmin):
    list_display = ('idtype','name','style_html_display')
    change_list_template = 'admin/association/image_change_list.html'

    def get_urls(self) :
        urls= super().get_urls()
        custom_urls = [
            path('image/<str:change_title>/',self.change_image_title)
        ]
        return custom_urls + urls
    
    def change_image_title(self,request,change_title):
        print(change_title)
        self.model.objects.all().update(title = change_title)
        self.message_user(request, 'title set successfully!')
        return HttpResponseRedirect("admin/association/image/")

    def style_html_display(self,obj):
        return format_html(
            f'<span style="color: red;">{obj.title}</span>'
        )

admin.site.register(Image,ImageAdmin )
admin.site.unregister(Group)
admin.site.site_header = 'Manage your database here'