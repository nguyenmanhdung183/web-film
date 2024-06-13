#app/model.py
from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
from datetime import datetime
#from django.utils.translation import gettext_lazy as _

class Genre(models.Model):# thể loại
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name

class Country(models.Model):#  quốc gia
    name = models.CharField(max_length=255)
    
    def __str__(self):
        return self.name

class Movie(models.Model): # phim
    title = models.CharField(max_length=255)
    genre = models.ForeignKey(Genre, on_delete=models.SET_NULL, null=True) #xoa theloai thi theloai phim se ve NULL
    country = models.ForeignKey(Country, on_delete=models.SET_NULL, null=True)
    director = models.CharField(max_length=255, default='Unknown')
    actors = models.CharField(max_length=255, default='Unknown')
    rating = models.FloatField(default=0.0)
    description = models.TextField()
    thumbnail = models.ImageField(upload_to='images/', default='path/to/default_picture.jpg')
    trailer_link = models.URLField(default='https://www.youtube.com/?app=desktop')
    video_file = models.CharField(max_length=1024, default='Unknown')
    views = models.PositiveIntegerField(default=0)  # Thêm trường views
    cfav=models.PositiveIntegerField(default=0)  # Thêm trường views
    def __str__(self):
        return self.title
    

class Review(models.Model): # đánh giá
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE) # khi 1 movie bi xoa thi tat ca dgia lquan deu bi xoa
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    rating = models.IntegerField(choices=[(i, i) for i in range(1, 11)])
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.movie} - {self.user}"

class Favorite(models.Model):# danh sách yêu thích của người dùng
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)


    def __str__(self):
        return f"{self.movie} - {self.user}"# tra ve ten phim va ten user
class Comment(models.Model): # bình luận
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE) # khi 1 movie bi xoa thi tat ca dgia lquan deu bi xoa
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    comment = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return f"{self.movie} - {self.user}"# tra ve ten phim va ten user
