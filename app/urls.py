from django.urls import path
from . import views
from django.views.i18n import set_language
urlpatterns = [
    path('', views.home),
    path('detail/<int:id>', views.detail, name='detail'),
    path('genre/<int:genre_id>/', views.genre, name='genre'),
    path('country/<int:country_id>/', views.country, name='country'),
    path('search/', views.search, name='search'),
    path('rate_movie/<int:movie_id>/',views.rate_movie, name='rate_movie'),
    path('lovemovie/<int:movie_id>/',views.lovemovie, name='lovemovie'),
    path('lovelist/', views.lovelist, name='lovelist'),
    path('video/<int:id>',views.video, name='video'),
    path('comment/<int:movie_id>/', views.create_comment, name= "comment"),
    path('lang/<int:lang_id>/', views.switchLang, name= "switchLang")
]

