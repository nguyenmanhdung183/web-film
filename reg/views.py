from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages


def signup(request):
    if request.method == "POST":
        uname = request.POST.get("username")
        pass1 = request.POST.get("password")

        if User.objects.filter(username=uname).exists():
            messages.info(request, "tài khoản đã có sẵn")
            return redirect('/reg/signup')

        myuser = User.objects.create_user(username=uname)
        myuser.set_password(pass1)  
        myuser.save()

        messages.success(request, "đăng ký thành công, vui lòng đăng nhập")
        return redirect('signin')

    return render(request, 'signup.html')




def signin(request):
    if request.method == "POST":
        uname = request.POST.get("username")
        pass1 = request.POST.get("password")
        user = authenticate(username=uname, password=pass1)
        if user is not None:
            login(request, user)
            return redirect('/', {"user": user})
        else:
            messages.error(request, "tài khoản hoặc mật khẩu không đúng.")
            return redirect('/reg/signin')
    
    return render(request, 'signin.html')

def signout(request):
    logout(request)
    return redirect('/')
