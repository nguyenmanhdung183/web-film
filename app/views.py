from django.shortcuts import render, get_object_or_404, redirect
from .models import Movie,Country,Genre, Review, Favorite, Comment
from .forms import RatingForm
from django.urls import reverse
from .forms import CommentForm
from django.db.models import Q
from django.utils.translation import activate

lang="vi"

def switchLang(request,lang_id):
    url=request.META.get('HTTP_REFERER')

    global lang
    if (lang_id == 1):
        lang = 'en'
    elif (lang_id == 2):
        lang = 'vi'
    return redirect(url)

def home(request):
  mylist= Movie.objects.all()
  activate(lang)
  return render(request,"list1.html",{
    "mylist":mylist
  })
  
def detail(request, id):
    activate(lang)

    mymember = Movie.objects.get(id=id)#id(2) truyen tu web,id(1) trong csdl cua movie
    
    form = RatingForm()
    if request.user.is_authenticated:
        is_favorite = Favorite.objects.filter(user=request.user, movie=mymember).exists()
    else:
        is_favorite = False
    comments=Comment.objects.filter(movie=mymember)

    context = {
        "comments":comments,
        'mymember': mymember,
        'form': form,
        'is_favorite': is_favorite}
    return render(request, 'detail1.html', context)
######
def video(request, id):
    mylist= Movie.objects.all()
    listitem=Movie.objects.all().order_by("rating")
    activate(lang)
    mymember= Movie.objects.get(id=id)
    form = RatingForm()
    comments=Comment.objects.filter(movie=mymember)
    context= {
        'mymember':mymember,
        'comments':comments,
        'form': form,
        "mylist":mylist,
        "listitem":listitem
    }
    
    return render(request,'index1.html', context)
    
def about(request):
    activate(lang)

    return render(request, 'about1.html')

def genre(request, genre_id):
    activate(lang)

    genre = get_object_or_404(Genre, id=genre_id)
    movie = Movie.objects.filter(genre=genre)
    context = {'movie': movie,
               'genre': genre}
    return render(request, 'genre1.html', context)

def country(request, country_id):
    activate(lang)

    country = get_object_or_404(Country, id=country_id)
    movie = Movie.objects.filter(country=country)
    context = {'movie': movie, 'country': country}
    return render(request, 'country1.html', context)

def search(request):
    activate(lang)

    query = request.GET.get('q')
    results = None
    if query:
        results = Movie.objects.filter(
            Q(title__icontains=query) | 
            Q(actors__icontains=query) | 
            Q(director__icontains=query))
    context={
        "query":query,
        "results": results }
    return render(request, 'search1.html', context)
  
def rate_movie(request, movie_id):
    activate(lang)

    movie = get_object_or_404(Movie, id=movie_id)
    user_reviews = Review.objects.filter(movie=movie, user=request.user)

    if request.method == 'POST':
        form = RatingForm(request.POST)
        if form.is_valid():
            rating_value = form.cleaned_data['rating']# làm sạch dữ liệu

            if user_reviews.exists():
                user_reviews.update(rating=rating_value)
            else:
                Review.objects.create(movie=movie, user=request.user, rating=rating_value)

            #tính trung bình
            reviews = Review.objects.filter(movie=movie)
            total_ratings = sum([review.rating for review in reviews])
            average_rating = total_ratings / len(reviews)
            movie.rating = average_rating
            movie.save()

            #redirect_url = reverse('detail', kwargs={'id': movie_id})
            redirect_url=request.META.get('HTTP_REFERER')

            return redirect(redirect_url)
        
    return render(request, 'detail1.html', {'movie': movie, 'form': form})

def lovemovie(request, movie_id):
    activate(lang)

    movie = get_object_or_404(Movie, id=movie_id)

    user_favorites = Favorite.objects.filter(movie=movie, user=request.user)
    if user_favorites.exists():
        user_favorites.delete()
    else:
        Favorite.objects.create(movie=movie, user=request.user)

    redirect_url=request.META.get('HTTP_REFERER')
    return redirect(redirect_url)
  
def lovelist(request):
    activate(lang)

    favorites = Favorite.objects.filter(user=request.user)
    return render(request, 'lovelist1.html', {'results': favorites})

def create_comment(request, movie_id):
    activate(lang)

    if request.method == 'POST':
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            if request.user.is_authenticated:
                comment.user = request.user
                comment.movie_id = movie_id  # Gán movie_id từ đối số URL vào comment
                comment.save()
                redirect_url = reverse('detail', kwargs={'id': movie_id})
     
                return redirect(redirect_url)
            
