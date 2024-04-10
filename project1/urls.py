from django.contrib import admin
from django.urls import include, path
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf.urls.i18n import i18n_patterns

from app import views as home_views  # Đặt tên riêng để tránh xung đột

urlpatterns =  [
    path('admin/', admin.site.urls),
    path('about/', home_views.about),  # Sử dụng hàm xử lý từ views trực tiếp
    path('reg/', include('reg.urls')),  # 'reg' là tên ứng dụng 
    path("", include('app.urls')),
]+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += staticfiles_urlpatterns()
urlpatterns +=  static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

