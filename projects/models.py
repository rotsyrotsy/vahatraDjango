from django.db import models
from association.models import Institution,Image

# Create your models here.

class Project(models.Model):
    title = models.CharField(max_length=150, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    year = models.IntegerField(blank=True, null=True)
    idimage = models.ForeignKey(Image, models.DO_NOTHING, db_column='idimage', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'project'


class Projectintervenant(models.Model):
    idproject = models.ForeignKey(Project, models.DO_NOTHING, db_column='idproject')
    idinst = models.ForeignKey(Institution, models.DO_NOTHING, db_column='idinst', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'projectintervenant'

class Projectwithpartners(models.Model):
    id = models.IntegerField(primary_key=True, blank=True)
    title = models.CharField(max_length=150, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    year = models.IntegerField(blank=True, null=True)
    image = models.CharField(max_length=255, blank=True, null=True)
    partners = models.TextField(blank=True, null=True)

    class Meta:
        managed = False  # Created from a view. Don't remove.
        db_table = 'projectwithpartners'