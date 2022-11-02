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
    idperson = models.ForeignKey('Person', on_delete=models.CASCADE, db_column='idperson')
    idtypemember = models.ForeignKey('Typemember', on_delete=models.CASCADE, db_column='idtypemember')
    mail = models.CharField(max_length=100, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    image = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'member'

class Messageofyear(models.Model):
    year = models.IntegerField(blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    idmember = models.ForeignKey('Member', on_delete=models.CASCADE, db_column='idmember', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'messageofyear'



class Typemember(models.Model):
    type = models.CharField(max_length=100, blank=True, null=True,unique=True)
    description = models.TextField(blank=True, null=True)
    image = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        db_table = 'typemember'

class Typememberimage(models.Model):
    idtypemember = models.ForeignKey('Typemember', on_delete=models.CASCADE, db_column='idtypemember')
    image = models.CharField(max_length=255, blank=True, null=True)
    class Meta:
        db_table = 'typememberimage'
    


class Partner(models.Model):
    idinst = models.ForeignKey('Institution', on_delete=models.CASCADE, db_column='idinst')
    description = models.TextField(blank=True, null=True)
    link = models.CharField(max_length=150, blank=True, null=True)
    logo = models.CharField(max_length=150, blank=True, null=True)
    isLink = models.BooleanField(default=False)

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
    idtype = models.ForeignKey('Imagetype', on_delete=models.CASCADE, db_column='idtype', blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    title = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'image'

class Imagetype(models.Model):
    type = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        db_table = 'imagetype'

class Memberpostinst(models.Model):
    idmember = models.ForeignKey('Member', on_delete=models.CASCADE, db_column='idmember')
    idpost = models.ForeignKey('Post', on_delete=models.CASCADE, db_column='idpost', blank=True, null=True)
    idinst = models.ForeignKey('Institution', on_delete=models.CASCADE, db_column='idinst', blank=True, null=True)
    iddept = models.ForeignKey('Department', on_delete=models.CASCADE, db_column='iddept', blank=True, null=True)

    class Meta:
        db_table = 'memberpostinst'

class Post(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    name = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        db_table = 'post'
