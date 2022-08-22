from django.db import models
from association.models import Department, Institution, Partner, Person, Image

class Fieldschool(models.Model):
    idvisite = models.ForeignKey('Visite', models.DO_NOTHING, db_column='idvisite')
    idinst = models.ForeignKey(Institution, models.DO_NOTHING, db_column='idinst', blank=True, null=True)  
    iddept = models.ForeignKey(Department, models.DO_NOTHING, db_column='iddept', blank=True, null=True)     

    class Meta:
        managed = True
        db_table = 'fieldschool'


class Fieldshcoolpartner(models.Model):
    idvisite = models.ForeignKey('Visite', models.DO_NOTHING, db_column='idvisite')
    idpartner = models.ForeignKey(Partner, models.DO_NOTHING, db_column='idpartner')

    class Meta:
        managed = True
        db_table = 'fieldshcoolpartner'


class Imagevisite(models.Model):
    idvisite = models.ForeignKey('Visite', models.DO_NOTHING, db_column='idvisite')
    idimage = models.ForeignKey(Image, models.DO_NOTHING, db_column='idimage')

    class Meta:
        managed = True
        db_table = 'imagevisite'



class Lieu(models.Model):
    nom = models.CharField(max_length=255, blank=True, null=True)
    longitude = models.FloatField(blank=True, null=True)
    latitude = models.FloatField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'lieu'

class Typevisite(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    type = models.CharField(max_length=150, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'typevisite'


class Visite(models.Model):
    idtypevisite = models.ForeignKey(Typevisite, models.DO_NOTHING, db_column='idtypevisite', blank=True, null=True)
    idlieu = models.ForeignKey(Lieu, models.DO_NOTHING, db_column='idlieu')
    date = models.DateField(blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    datefin = models.DateField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'visite'

class Intervenantfieldschool(models.Model):
    id = models.IntegerField(primary_key=True,blank=True)
    intervenant = models.TextField(blank=True, null=True)

    class Meta:
        managed = False  # Created from a view. Don't remove.
        db_table = 'intervenantfieldschool'

class Seminaire(models.Model):
    date = models.DateField(blank=True, null=True)
    idperson = models.ForeignKey(Person, models.DO_NOTHING, db_column='idperson', blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    title = models.CharField(max_length=100, blank=True, null=True)
    idimage = models.ForeignKey(Image, models.DO_NOTHING, db_column='idimage', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'seminaire'

class Recherche(models.Model):
    date = models.DateField(blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    endemic = models.CharField(max_length=255, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    remarque = models.CharField(max_length=100, blank=True, null=True)
    auteurs = models.CharField(max_length=255, blank=True, null=True)
    idimage = models.ForeignKey(Image, models.DO_NOTHING, db_column='idimage', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'recherche'