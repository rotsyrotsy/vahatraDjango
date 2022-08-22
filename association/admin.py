from django.contrib import admin
from parler.admin import TranslatableAdmin

from .models import Memberviewposts

admin.site.register(Memberviewposts, TranslatableAdmin)
# Register your models here.
