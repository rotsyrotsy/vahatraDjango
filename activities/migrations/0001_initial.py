# Generated by Django 4.0.6 on 2022-08-30 09:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('association', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Intervenantfieldschool',
            fields=[
                ('id', models.IntegerField(blank=True, primary_key=True, serialize=False)),
                ('intervenant', models.TextField(blank=True, null=True)),
            ],
            options={
                'db_table': 'intervenantfieldschool',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Activity',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=255, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('date', models.DateField(blank=True, null=True)),
                ('note', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'activity',
            },
        ),
        migrations.CreateModel(
            name='Location',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=255, null=True)),
                ('longitude', models.FloatField(blank=True, null=True)),
                ('latitude', models.FloatField(blank=True, null=True)),
            ],
            options={
                'db_table': 'location',
            },
        ),
        migrations.CreateModel(
            name='Typeactivity',
            fields=[
                ('id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('type', models.CharField(blank=True, max_length=150, null=True)),
            ],
            options={
                'db_table': 'typeactivity',
            },
        ),
        migrations.CreateModel(
            name='Typesubactivity',
            fields=[
                ('id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('type', models.CharField(blank=True, max_length=150, null=True)),
                ('idtypeactivity', models.ForeignKey(db_column='idtypeactivity', on_delete=django.db.models.deletion.DO_NOTHING, to='activities.typeactivity')),
            ],
            options={
                'db_table': 'typesubactivity',
            },
        ),
        migrations.CreateModel(
            name='Visit',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('dateend', models.DateField(blank=True, null=True)),
                ('idactivity', models.ForeignKey(db_column='idactivity', on_delete=django.db.models.deletion.DO_NOTHING, to='activities.activity')),
                ('idlocation', models.ForeignKey(db_column='idlocation', on_delete=django.db.models.deletion.DO_NOTHING, to='activities.location')),
                ('idtypesubactivity', models.ForeignKey(db_column='idtypesubactivity', on_delete=django.db.models.deletion.DO_NOTHING, to='activities.typesubactivity')),
            ],
            options={
                'db_table': 'visit',
            },
        ),
        migrations.CreateModel(
            name='Fieldschool',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('iddept', models.ForeignKey(blank=True, db_column='iddept', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='association.department')),
                ('idinst', models.ForeignKey(db_column='idinst', on_delete=django.db.models.deletion.DO_NOTHING, to='association.institution')),
                ('idvisit', models.ForeignKey(db_column='idvisit', on_delete=django.db.models.deletion.DO_NOTHING, to='activities.visit')),
            ],
            options={
                'db_table': 'fieldschool',
            },
        ),
        migrations.CreateModel(
            name='Activityperson',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('idactivity', models.ForeignKey(db_column='idactivity', on_delete=django.db.models.deletion.DO_NOTHING, to='activities.activity')),
                ('idperson', models.ForeignKey(db_column='idperson', on_delete=django.db.models.deletion.DO_NOTHING, to='association.person')),
            ],
            options={
                'db_table': 'activityperson',
            },
        ),
        migrations.CreateModel(
            name='Activityinstitution',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('idactivity', models.ForeignKey(db_column='idactivity', on_delete=django.db.models.deletion.DO_NOTHING, to='activities.activity')),
                ('idinst', models.ForeignKey(db_column='idinst', on_delete=django.db.models.deletion.DO_NOTHING, to='association.institution')),
            ],
            options={
                'db_table': 'activityinstitution',
            },
        ),
        migrations.CreateModel(
            name='Activityimage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('idactivity', models.ForeignKey(db_column='idactivity', on_delete=django.db.models.deletion.DO_NOTHING, to='activities.activity')),
                ('idimage', models.ForeignKey(db_column='idimage', on_delete=django.db.models.deletion.DO_NOTHING, to='association.image')),
            ],
            options={
                'db_table': 'activityimage',
            },
        ),
        migrations.AddField(
            model_name='activity',
            name='idtypeactivity',
            field=models.ForeignKey(db_column='idtypeactivity', on_delete=django.db.models.deletion.DO_NOTHING, to='activities.typeactivity'),
        ),
    ]
