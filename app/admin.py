from django.contrib import admin
from app.models import Movie, Country, Genre, Review,Favorite, Comment

# Register your models here.
admin.site.register(Movie)
admin.site.register(Country)
admin.site.register(Genre)

class ReviewAdmin(admin.ModelAdmin):
    list_display = ('movie', 'user', 'rating')
    list_filter = ('movie', 'user', 'rating')
    search_fields = ('movie__title', 'user')

admin.site.register(Review, ReviewAdmin)

class Love(admin.ModelAdmin):
    list_display = ('movie', 'user')
    list_filter = ('movie', 'user',)
    search_fields = ('movie__title', 'user')

admin.site.register(Favorite, Love)

class ListComment(admin.ModelAdmin):
    list_display=("movie", "user", "comment")
    list_filter = ('movie', 'user',)
    search_fields = ('movie__title', 'user')
admin.site.register(Comment, ListComment)