from statistics import variance
from django.db import models

class Administrator(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    username = models.CharField(max_length=100, blank=True, null=False,unique=True)
    mail = models.CharField(max_length=100, blank=True, null=True)
    password = models.CharField(max_length=255, blank=True, null=False)

    class Meta:
        db_table = 'administrator'
