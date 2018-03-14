from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.http import Http404

from .models import Posts  # import Models to show on Page
# Create your views here.


def index(request):
    # return HttpResponse('halo')
    posts = Posts.objects.all()[:10]
    context = {
        'title': 'Latest Post',
        'posts': posts,
    }

    return render(request, 'posts/index.html', context)

def posts(request):
    # return HttpResponse('halo')
    posts = Posts.objects.all()[:10]
    context = {
        'title': 'Post List',
        'posts': posts,
    }

    return render(request, 'posts/post-list.html', context)


def details(request, pk):
    # try:

    #     post = Posts.objects.get(id=id) # id that coming from urls
    #     context = {
    #         'post' : post
    #     }

    # except Posts.DoesNotExist:
    #     raise Http404("Post Does Not Exist")

    post = get_object_or_404(Posts, id=pk)  # shortcut
    context = {
        'post': post,
    }
    return render(request, 'posts/details.html', context)
