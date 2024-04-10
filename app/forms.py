# forms.py
from django import forms
from .models import Review
from .models import Comment

class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['comment']  # Chỉ định trường 'comment' trong form
class RatingForm(forms.ModelForm):
    class Meta:# sử dụng để cung cấp metadata (siêu dữ liệu) cho một lớp form
        model = Review #cho biết form này sẽ liên kết với mô hình Review
        fields = ['rating']
