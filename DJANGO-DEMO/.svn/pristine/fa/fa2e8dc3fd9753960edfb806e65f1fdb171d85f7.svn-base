from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

from app import views as app_views

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'mysite.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    #url(r'^admin/', include(admin.site.urls)),
    
    #added by app
    ('^$', app_views.index),
    ('^gettest/$', app_views.gettest),
    ('^posttest/$', app_views.posttest),
)
