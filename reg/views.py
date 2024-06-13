# Import các hàm cần thiết từ Django
from django.shortcuts import render, redirect

# Import model người dùng từ Django
from django.contrib.auth.models import User

# Import các hàm xác thực, đăng nhập, đăng xuất từ Django
from django.contrib.auth import authenticate, login, logout

# Import các thông báo từ Django
from django.contrib import messages


# Hàm đăng ký người dùng
def signup(request):
    if request.method == "POST":
        # Lấy thông tin từ form POST
        uname = request.POST.get("username")
        pass1 = request.POST.get("password")

        # Kiểm tra xem tên người dùng đã tồn tại chưa
        if User.objects.filter(username=uname).exists():
            messages.info(request, "Tài khoản đã tồn tại")
            return redirect('/reg/signup')

        # Tạo người dùng mới
        myuser = User.objects.create_user(username=uname)
        myuser.set_password(pass1)  
        myuser.save()

        # Thông báo đăng ký thành công và chuyển hướng đến trang đăng nhập
        messages.success(request, "Đăng ký thành công, vui lòng đăng nhập")
        return redirect('signin')

    return render(request, 'signup.html')


# Hàm đăng nhập
def signin(request):
    if request.method == "POST":
        # Lấy thông tin từ form POST
        uname = request.POST.get("username")
        pass1 = request.POST.get("password")

        # Xác thực người dùng
        user = authenticate(username=uname, password=pass1)
        if user is not None:
            # Đăng nhập thành công, chuyển hướng đến trang chính
            login(request, user)
            return redirect('/', {"user": user})
        else:
            # Thông báo lỗi nếu tài khoản hoặc mật khẩu không đúng
            messages.error(request, "Tài khoản hoặc mật khẩu không đúng.")
            return redirect('/reg/signin')
    
    return render(request, 'signin.html')


# Hàm đăng xuất
def signout(request):
    logout(request)
    return redirect('/')
