from django.shortcuts import render, get_object_or_404, redirect
from .models import Movie,Country,Genre, Review, Favorite, Comment # import các model
#import biểu mẫu để nhập dữ liệu người dùng 
from .forms import RatingForm
from .forms import CommentForm
from django.urls import reverse# Import các công cụ cho việc xử lý URL
from django.db.models import Q# Import các công cụ cho việc truy vấn dữ liệu trong cơ sở dữ liệu
from django.utils.translation import activate# Import công cụ cho việc dịch ngôn ngữ

lang="vi"

def switchLang(request,lang_id): #  hàm đổi ngôn ngữ- sửa biến lang
    url=request.META.get('HTTP_REFERER')#lấy url trang giao diện diện tại
    global lang # lấy biến lang
    if (lang_id == 1):# đổi lang thành tiếng anh khi id truyền sang là 1
        lang = 'en'
    elif (lang_id == 2):# đổi lang thành tiếng việt khi id truyền sang là 2
        lang = 'vi'
    return redirect(url) # trả lại trang  giao diện cũ

def home(request):# hàm gọi trang chủ
  mylist= Movie.objects.all()# lọc lấy toàn bộ phim trong dtb
  activate(lang) # dùng để set language  cho trang web
  return render(request,"list1.html",{
    "mylist":mylist
  })
  
def detail(request, id):# hàm xử lý trang chi tiết phim
    activate(lang)

    mymember = Movie.objects.get(id=id)#id(2) truyen tu web,id(1) trong csdl cua movie #loc cac phim trong dtb có id được request 
    demfav = Favorite.objects.filter(movie_id=id).count()
    mymember.cfav=demfav
    mymember.save()
    form = RatingForm()
    # xem phim đã được cho vào danh sách yêu thích của user hay chưa rồi truyền qua context
    if request.user.is_authenticated:
        is_favorite = Favorite.objects.filter(user=request.user, movie=mymember).exists()
    else:
        is_favorite = False

    context = {
        'mymember': mymember,
        'form': form,
        'is_favorite': is_favorite,
        'demfav': demfav
        }
    return render(request, 'detail1.html', context)
######
def video(request, id):# hàm xử lý trang phát video
    mylist= Movie.objects.all() # lấy tất cả phim để đưa vào phần danh sách cuối trang web
    listitem=Movie.objects.all().order_by("rating")#phân loại theo rating
    activate(lang)
    mymember= Movie.objects.get(id=id)#lấy phim ra
    mymember.views += 1
    mymember.save()
    form = RatingForm() # tạo form để xử lý  nhập giá trị rating
    comments=Comment.objects.filter(movie=mymember)#lấy tất cả comment để hiển thị
    context= {
        'mymember':mymember,
        'comments':comments,
        'form': form,
        "mylist":mylist,
        "listitem":listitem
    }
    
    return render(request,'index1.html', context)
    
def about(request): # hàm về thông tin trang web
    activate(lang)
    return render(request, 'about1.html')

def genre(request, genre_id): # hàm lọc theo thể loại
    activate(lang)

    genre = get_object_or_404(Genre, id=genre_id)# kiểm tra xem id có tồn tại không
    movie = Movie.objects.filter(genre=genre)# lấy tất cả film có
    context = {'movie': movie,
               'genre': genre}
    return render(request, 'genre1.html', context)

def country(request, country_id):# lọc theo quốc gia
    activate(lang)

    country = get_object_or_404(Country, id=country_id)#kiêm tra xem id có tồn tại hay ko?
    movie = Movie.objects.filter(country=country)# lấy tất cả film có
    context = {'movie': movie, 'country': country}
    return render(request, 'country1.html', context)

def search(request):# hàm tìm kiếm
    activate(lang)

    query = request.GET.get('q')#lấy giá trị người dùng nhập vào qua phương thức GET
    results = None #mặc định kết quả là NULL
    if query: # tìm kiếm trong dtb và update lại biến result
        results = Movie.objects.filter(
            Q(title__icontains=query) | 
            Q(actors__icontains=query) | 
            Q(director__icontains=query))
    context={
        "query":query,
        "results": results }
    return render(request, 'search1.html', context)
  
def rate_movie(request, movie_id):# hàm xử lý về đánh giá phim
    activate(lang)

    movie = get_object_or_404(Movie, id=movie_id) # Kiểm tra xem ID có tồn tại hay không
    user_reviews = Review.objects.filter(movie=movie, user=request.user) # lấy các rating từ dtb

    if request.method == 'POST':
        form = RatingForm(request.POST)
        if form.is_valid():
            rating_value = form.cleaned_data['rating']# làm sạch dữ liệu
            #xem review của user đã tồn tại hay  chưa, nếu chưa thì tạo mời, còn không thì update giá trị
            if user_reviews.exists():
                user_reviews.update(rating=rating_value)
            else:
                Review.objects.create(movie=movie, user=request.user, rating=rating_value)

            #tính trung bình các rating 
            reviews = Review.objects.filter(movie=movie)
            total_ratings = sum([review.rating for review in reviews])
            average_rating = total_ratings / len(reviews)
            movie.rating = average_rating
            movie.save()

            redirect_url=request.META.get('HTTP_REFERER') # lấy địa chỉ trang web để return lại sau khi đánh giá

            return redirect(redirect_url)
        
    return render(request, 'detail1.html', {'movie': movie, 'form': form})

def lovemovie(request, movie_id):# hàm thêm-xoá phim khỏi danh sách yêu thích
    activate(lang)

    movie = get_object_or_404(Movie, id=movie_id)# lấy phim ra,kiểm tra xem ID có tồn tại hay không
    # kiểm tra xem phim đó đang có trong favorite chưa
    user_favorites = Favorite.objects.filter(movie=movie, user=request.user)
    if user_favorites.exists():
        user_favorites.delete()
    else:
        Favorite.objects.create(movie=movie, user=request.user)

    redirect_url=request.META.get('HTTP_REFERER')# lấy địa chỉ trang web để return lại sau khi thực hiện yêu thích
    return redirect(redirect_url)
  
def lovelist(request):# hàm lấy ra danh sách phim yêu thích
    activate(lang)

    favorites = Favorite.objects.filter(user=request.user)
    return render(request, 'lovelist1.html', {'results': favorites})

def create_comment(request, movie_id):# hàm xử lý comment
    activate(lang)
    #lấy comment theo phương thức POST
    if request.method == 'POST':
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            #lưu lại comment vào dtb
            if request.user.is_authenticated:
                comment.user = request.user
                comment.movie_id = movie_id  # Gán movie_id từ đối số URL vào comment
                comment.save()
                redirect_url = reverse('detail', kwargs={'id': movie_id}) #lấy link trang web  hiện tại để return lại
                return redirect(redirect_url)
            
