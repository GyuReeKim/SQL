# Generated by Django 2.2.4 on 2019-10-10 00:21

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=100)),
                ('last_name', models.CharField(max_length=100)),
                ('age', models.IntegerField()),
                ('country', models.CharField(max_length=100)),
                ('phone', models.CharField(max_length=150)),
                ('balance', models.IntegerField()),
            ],
        ),
    ]
