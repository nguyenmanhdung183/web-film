# Generated by Django 4.2.7 on 2024-06-11 05:21

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0004_movie_cfav'),
    ]

    operations = [
        migrations.AddField(
            model_name='comment',
            name='created_at',
            field=models.DateTimeField(auto_now_add=True, default=datetime.datetime(2024, 6, 11, 5, 21, 18, 552183, tzinfo=datetime.timezone.utc)),
            preserve_default=False,
        ),
    ]
