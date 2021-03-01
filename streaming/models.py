from django.db import models

# Create your models here.

class Songs(models.Model):
    title = models.CharField(max_length=200)
    rating = models.PositiveIntegerField(default=0)
