from django.shortcuts import render

def page_not_found_view(request, exception):
    return render(request, 'association/httpError/404.html', status=404)

def my_custom_permission_denied_view(request,exception):
    return render(request, 'association/httpError/403.html', status=403)