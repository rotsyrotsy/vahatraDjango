# Generated by Django 4.2.1 on 2023-11-13 19:18

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('activities', '0036_alter_activity_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='activity',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2023, 11, 13, 19, 18, 17, 412434, tzinfo=datetime.timezone.utc), null=True),
        ),
    ]