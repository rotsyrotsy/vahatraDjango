from django.utils import translation 
from django.conf import settings

def setAttributeByRequestParams(request,params,model):
    print(params)
    values = [request.POST.get(p) for p in params]
    i = 0
    for value in values:
        if value != "":
            current = params[i]+'_'+translation.get_language()
            for code,lang in settings.LANGUAGES:
                other = params[i]+'_'+code
                if current != other:
                    if hasattr(model,other):
                        setattr(model, other, value.strip())
            setattr(model, params[i], value.strip())
        i += 1

def updateAttributeByRequestParams(request,params,model):
    countChange = 0
    values = [request.POST.get(p) for p in params]
    i = 0
    for value in values:
        # if getattr(model, params[i]) is None or value != str(getattr(model, params[i])):
        if value == "":
            value = None
        else:
            value = value.strip()
        setattr(model, params[i], value)
        countChange += 1
        i += 1
    return countChange

