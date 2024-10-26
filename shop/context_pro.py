from .models import Catagory,Cart
from django.contrib.auth.models import User

def context_data(request):
    c_data = Catagory.objects.all()
    try:
        data_c = Cart.objects.filter(u_id = request.user)
    except:
        data_c = []
        
    g_total = 0
    for d in data_c:
        g_total += d.sub_total()
    return {'c_data':c_data,'data_c':data_c,'g_total':g_total}