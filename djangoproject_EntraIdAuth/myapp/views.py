
# Create your views here.
from django.shortcuts import render
from azure_auth.decorators import azure_auth_required
from django.shortcuts import HttpResponse
from django.contrib.auth.decorators import login_required
 

 
def index(request):
    return render(request, 'myapp/index.html')
    
def about(request):
    return render(request, 'myapp/about.html')
 
@azure_auth_required
def contact(request):
    return render(request, 'myapp/contact.html')

