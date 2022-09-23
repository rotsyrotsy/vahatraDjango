# Generated by Django 4.0.6 on 2022-09-23 11:29

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('association', '0005_remove_studentdegree_iddegree_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Link',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('link', models.CharField(blank=True, max_length=150, null=True)),
                ('idinst', models.ForeignKey(db_column='idinst', on_delete=django.db.models.deletion.CASCADE, to='association.institution')),
            ],
            options={
                'db_table': 'link',
                'managed': True,
            },
        ),
    ]
