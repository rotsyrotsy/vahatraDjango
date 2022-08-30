# Generated by Django 4.0.6 on 2022-08-30 07:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('association', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Publicationauthor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'publicationauthor',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Publicationdetail',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=255, null=True)),
                ('pdf', models.CharField(blank=True, max_length=100, null=True)),
            ],
            options={
                'db_table': 'publicationdetail',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Typepublication',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type', models.CharField(blank=True, max_length=100, null=True)),
            ],
            options={
                'db_table': 'typepublication',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Publication',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=200, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('date', models.DateField(blank=True, null=True)),
                ('idimageback', models.ForeignKey(db_column='idimageback', on_delete=django.db.models.deletion.DO_NOTHING, related_name='idimageback', to='association.image')),
                ('idimagefront', models.ForeignKey(db_column='idimagefront', on_delete=django.db.models.deletion.DO_NOTHING, related_name='idimagefront', to='association.image')),
                ('idtype', models.ForeignKey(db_column='idtype', on_delete=django.db.models.deletion.DO_NOTHING, to='publications.typepublication')),
            ],
            options={
                'db_table': 'publication',
            },
        ),
    ]
