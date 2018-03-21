from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.http import Http404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from .models import Posts  # import Models to show on Page
# Create your views here.


def index(request):
    # return HttpResponse('halo')
    posts = Posts.objects.all()

    # Pagination Code #######################

    paginator = Paginator(posts, 4)
    page = request.GET.get('page')

    try:
        items = paginator.page(page)
    except PageNotAnInteger as e:
        #print(e)
        items = paginator.page(1)
    except EmptyPage as ep:
        #print(ep)
        items = paginator.page(paginator.num_pages)
    
    index = items.number - 1
    max_index = len(paginator.page_range)
    start_index = index - 5 if index >= 5 else 0
    end_index = index + 5 if index <= max_index - 5 else max_index
    page_range = paginator.page_range[start_index:end_index]

    # End of Pagination Code ################

    context = {
        'title': 'Latest Post',
        'posts': posts,
        'page_range' : page_range,
        'items' : items
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
