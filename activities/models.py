from django.db import models
from association.models import Department, Institution,  Person, Image
from django.utils import timezone

class Fieldschool(models.Model):
    idvisit = models.ForeignKey('Visit', db_column='idvisit',on_delete =models.CASCADE)
    idinst = models.ForeignKey(Institution, models.DO_NOTHING, db_column='idinst')
    iddept = models.ForeignKey(Department, models.DO_NOTHING, db_column='iddept', blank=True, null=True)

    class Meta:
        db_table = 'fieldschool'

class Typesubactivity(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    type = models.CharField(max_length=150, blank=True, null=True,unique=True)
    idtypeactivity = models.ForeignKey('Typeactivity', models.DO_NOTHING, db_column='idtypeactivity')

    class Meta:
        db_table = 'typesubactivity'

class Typeactivity(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    type = models.CharField(max_length=150, blank=True, null=True,unique=True)

    class Meta:
        db_table = 'typeactivity'

class Activity(models.Model):
    idtypeactivity = models.ForeignKey('Typeactivity', models.DO_NOTHING, db_column='idtypeactivity')
    title = models.CharField(max_length=255, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    date = models.DateField(blank=True, null=True,default=timezone.now())
    note = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(max_length = 255, null = True, blank = True)
    idtypesubactivity = models.ForeignKey('Typesubactivity', models.DO_NOTHING, db_column='idtypesubactivity', null=True)

    class Meta:
        db_table = 'activity'

class Visit(models.Model):
    idactivity = models.ForeignKey('Activity', db_column='idactivity',on_delete =models.CASCADE)
    idlocation = models.ForeignKey('Location', models.DO_NOTHING, db_column='idlocation')
    dateend = models.DateField(blank=True, null=True)

    class Meta:
        db_table = 'visit'

class Location(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    longitude = models.FloatField(blank=True, null=True)
    latitude = models.FloatField(blank=True, null=True)

    class Meta:
        db_table = 'location'

class Activityimage(models.Model):
    image = models.CharField(max_length=255, blank=True, null=True)
    idactivity = models.ForeignKey('Activity',  db_column='idactivity',on_delete =models.CASCADE)

    class Meta:
        db_table = 'activityimage'

class Intervenantfieldschool(models.Model):
    id = models.IntegerField(primary_key=True,blank=True)
    intervenant = models.TextField(blank=True, null=True)

    class Meta:
        managed = False  # Created from a view. Don't remove.
        db_table = 'intervenantfieldschool'


class Activityperson(models.Model):
    idactivity = models.ForeignKey('Activity',  db_column='idactivity', on_delete =models.CASCADE)
    idperson = models.ForeignKey(Person, models.DO_NOTHING, db_column='idperson')

    class Meta:
        db_table = 'activityperson'

class Activityinstitution(models.Model):
    idactivity = models.ForeignKey(Activity, db_column='idactivity', on_delete =models.CASCADE)
    idinst = models.ForeignKey(Institution, models.DO_NOTHING, db_column='idinst')

    class Meta:
        db_table = 'activityinstitution'