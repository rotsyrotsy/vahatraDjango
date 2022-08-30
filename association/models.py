from django.db import models
from django.utils.translation import gettext_lazy as _


class Department(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        db_table = 'department'

class Institution(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        db_table = 'institution'

class Member(models.Model):
    idperson = models.ForeignKey('Person', models.DO_NOTHING, db_column='idperson')
    idtypemember = models.ForeignKey('Typemember', models.DO_NOTHING, db_column='idtypemember')
    mail = models.CharField(max_length=100, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    idimage = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'member'

class Messageofyear(models.Model):
    year = models.IntegerField(blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    idmember = models.ForeignKey('Member', models.DO_NOTHING, db_column='idmember', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'messageofyear'



class Typemember(models.Model):
    type = models.CharField(max_length=100, blank=True, null=True)
    description = models.TextField(blank=True, null=True)

    class Meta:
        db_table = 'typemember'


class Memberviewposts(models.Model):
    id = models.IntegerField(primary_key=True, blank=True)
    title = models.CharField(max_length=10, blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    username = models.CharField(max_length=200, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    mail = models.CharField(max_length=100, blank=True, null=True)
    posts = models.TextField(blank=True, null=True)
    idtypemember = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False  # Created from a view. Don't remove.
        db_table = 'memberviewposts'

class Partner(models.Model):
    idinst = models.ForeignKey('Institution', models.DO_NOTHING, db_column='idinst')
    description = models.TextField(blank=True, null=True)
    link = models.CharField(max_length=150, blank=True, null=True)
    logo = models.CharField(max_length=150, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'partner'


class Person(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    username = models.CharField(max_length=200, blank=True, null=True)
    title = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        db_table = 'person'

class Image(models.Model):
    idtype = models.ForeignKey('Imagetype', models.DO_NOTHING, db_column='idtype', blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    title = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'image'

class Imagetype(models.Model):
    type = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        db_table = 'imagetype'

class Degree(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    title = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        db_table = 'degree'

class Memberpostinst(models.Model):
    idmember = models.ForeignKey('Member', models.DO_NOTHING, db_column='idmember')
    idpost = models.ForeignKey('Post', models.DO_NOTHING, db_column='idpost', blank=True, null=True)
    idinst = models.ForeignKey('Institution', models.DO_NOTHING, db_column='idinst', blank=True, null=True)
    iddept = models.ForeignKey('Department', models.DO_NOTHING, db_column='iddept', blank=True, null=True)

    class Meta:
        db_table = 'memberpostinst'

class Post(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    name = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        db_table = 'post'

class Studentdegree(models.Model):
    idmember = models.ForeignKey('Member', models.DO_NOTHING, db_column='idmember')
    iddegree = models.ForeignKey('Degree', models.DO_NOTHING, db_column='iddegree')
    year = models.IntegerField(blank=True, null=True)
    subject = models.CharField(max_length=255, blank=True, null=True)
    mention = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        db_table = 'studentdegree'