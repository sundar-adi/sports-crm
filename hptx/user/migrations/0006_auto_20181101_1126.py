# Generated by Django 2.0.9 on 2018-11-01 11:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0005_auto_20181031_1940'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='country',
            field=models.CharField(blank=True, max_length=255, verbose_name='zip code'),
        ),
    ]