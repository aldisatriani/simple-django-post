from django.conf.urls import url
from . import views
# from django.views.generic import ListView, DetailView
#from posts.models import Posts

app_name = 'posts'

urlpatterns = [
    url(r'^posts/$', views.posts , name='posts'), # post slash nothing
    url(r'^$', views.index, name="index"),
    url(r'^details/(?P<pk>\d+)/$', views.details , name='details') # '\d+' > at least one or more digits
] 