# Generated by Django 4.0.6 on 2022-09-22 14:01

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('publications', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='publication',
            name='idtype',
            field=models.ForeignKey(db_column='idtype', on_delete=django.db.models.deletion.CASCADE, to='publications.typepublication'),
        ),
        migrations.AlterField(
            model_name='publicationauthor',
            name='idperson',
            field=models.ForeignKey(blank=True, db_column='idperson', null=True, on_delete=django.db.models.deletion.CASCADE, to='association.person'),
        ),
        migrations.AlterField(
            model_name='publicationauthor',
            name='idpublication',
            field=models.ForeignKey(db_column='idpublication', on_delete=django.db.models.deletion.CASCADE, to='publications.publication'),
        ),
        migrations.AlterField(
            model_name='publicationdetail',
            name='idpublication',
            field=models.ForeignKey(db_column='idpublication', on_delete=django.db.models.deletion.CASCADE, to='publications.publication'),
        ),
    ]
