from . import views
from django.urls import path

urlpatterns = [
    path('', views.index, name='index'),
    path('create', views.create, name='create'),
    path('list', views.list, name='list'),
    path('lists', views.lists, name='lists'),
    path('fileupload', views.fileupload, name='fileupload'),
    path('edit/<int:id>', views.edit, name='edit'),
    path('view/<int:id>', views.view, name='view'),
    path('edit/update/<int:id>', views.update, name='update'),
    path('delete/<int:id>', views.delete, name='delete'),
    path('approve/<int:id>', views.approve, name='approve'),
    path('reject/<int:id>', views.reject, name='reject'),
    path('ajax/', views.ajax, name='ajax'),
    path('ajax/ajax', views.ajax, name='ajaxpost'),
    path('ajax/delete', views.ajax_delete, name='ajax_delete'),
    path('ajax/getajax', views.getajax, name='getajax'),
    path('register', views.register, name='register'),
    path('register/success/', views.register_success, name='register_success'),
    path('users/', views.users, name='users'),
    path('users/delete/<int:id>', views.user_delete, name='user_delete'),
    path('upload/csv/', views.upload_csv, name='upload_csv'),
    path('updatePassword', views.changePassword, name='updatePassword'),
    path('changePassword', views.changePassword, name='changePassword'),
    path('file/delete/<int:id>', views.deleteFiles, name='deleteFiles'),
]
