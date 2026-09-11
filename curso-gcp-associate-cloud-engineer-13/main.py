import functions_framework

@functions_framework.http
def hello_http(request):
    return '¡Hola desde GCP Cloud Functions!'