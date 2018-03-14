from django.conf.urls import url
from . import views

app_name = 'wordcount'

urlpatterns = [
    url(r'^$', views.count , name='count'), # post slash nothing
    # url(r'^details/(?P<id>\d+)/$', views.details , name='details') # '\d+' > at least one or more digits
    # url(r'^$', views.count , name='count'),
] 