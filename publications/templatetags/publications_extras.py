from django import template

from vahatraDjango.functions import renameFile, toSlug
from django.urls import resolve, reverse
from django.utils import translation
register = template.Library()


def snake_case(value):
    return value.replace(' ', '_')

def split(value,character):
    return value.split(character)

def linebreakcustom(value):
    splitstr = value.split("</p>")
    lines = [item + '</p>' for item in splitstr]
    if lines[len(splitstr)-1]=="":
        lines = lines[len(splitstr)-1]
    
    # lines=[]
    # text=""
    # for line in value.splitlines():
    #     if line!="":
    #         text += line+" "
    #     else:
    #         lines.append(text)
    #         text= ""
    # lines.append(text)
    print(lines)
    return lines

def slicePerRange(value,liste=None):
    val = []
    range=1
    i=0
    for el in liste:
        img = value
        if i==0:
            img = value[range:range+2]
        else:
            img = value[range:range+3]
        if i==len(liste)-1:
            img = value[range:]
        dict={
            'line':el,
            'img': img
        }
        val.append(dict)
        if i==0:range += 2
        else: range += 3
        i+=1
    
    return val

def float_comma_to_dot(value):
    number = str(value)
    number.replace(',', '.')
    return number

def truncatesmart(value, limit="0,80"):
    words = value.split()
    try:
        min = int(limit.split(',')[0]) if limit.split(',')[0]!="" else 0
        max = int(limit.split(',')[1]) if limit.split(',')[1]!="" else len(words)
    except ValueError:
        return value

    if len(words) <= (max-min):
        words =  words[min:]
    else:
        words = words[min:max]


    # Join the words and return
    return ' '.join(words)


@register.simple_tag(takes_context=True)
def change_lang(context, lang=None, *args, **kwargs):
    """
    Get active page's url by a specified language
    Usage: {% change_lang 'en' %}
    """

    path = context['request'].path
    url_parts = resolve(path)

    url = path
    cur_language = translation.get_language()
    try:
        translation.activate(lang)
        url = reverse(url_parts.view_name, kwargs=url_parts.kwargs)
    finally:
        translation.activate(cur_language)

    return "%s" % url

register.filter('truncatesmart',truncatesmart)
register.filter('float_comma_to_dot',float_comma_to_dot)
register.filter('renameFile',renameFile)
register.filter('toSlug', toSlug)
register.filter('snake_case', snake_case)
register.filter('split',split)
register.filter('linebreakcustom',linebreakcustom)
register.filter('slicePerRange',slicePerRange)