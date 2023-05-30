from django.shortcuts import render

# Create your views here.
def placeholder(request):
    return render(request, 'placeholder/index.html')