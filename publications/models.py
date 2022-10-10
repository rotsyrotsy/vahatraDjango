from enum import unique
from django.db import models
from association.models import Person, Image

# Create your models here.


class Publication(models.Model):
    idtype = models.ForeignKey(
        'Typepublication',  on_delete=models.CASCADE, db_column='idtype')
    title = models.CharField(max_length=200, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    imagefront = models.CharField(max_length=255, blank=True, null=True)
    imageback = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        db_table = 'publication'


class Typepublication(models.Model):
    type = models.CharField(max_length=100, blank=True, null=True, unique=True)

    class Meta:
        managed = True
        db_table = 'typepublication'


class Publicationdetail(models.Model):
    idpublication = models.ForeignKey(
        'Publication',  on_delete=models.CASCADE, db_column='idpublication')
    name = models.CharField(max_length=255, blank=True, null=True)
    pdf = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        db_table = 'publicationdetail'


class Publicationauthor(models.Model):
    idpublication = models.ForeignKey(
        'Publication',  on_delete=models.CASCADE, db_column='idpublication')
    idperson = models.ForeignKey(
        Person,  on_delete=models.CASCADE, db_column='idperson', blank=True, null=True)

    class Meta:
        db_table = 'publicationauthor'
