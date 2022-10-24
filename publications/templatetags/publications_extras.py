from django import template

from vahatraDjango.functions import renameFile, toSlug

register = template.Library()


def snake_case(value):
    return value.replace(' ', '_')

def split(value,character):
    return value.split(character)

def linebreakcustom(value):
    lines=[]
    text=""
    for line in value.splitlines():
        if line!="":
            text += line+" "
        else:
            lines.append(text)
            text= ""
    lines.append(text)
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

register.filter('truncatesmart',truncatesmart)
register.filter('float_comma_to_dot',float_comma_to_dot)
register.filter('renameFile',renameFile)
register.filter('toSlug', toSlug)
register.filter('snake_case', snake_case)
register.filter('split',split)
register.filter('linebreakcustom',linebreakcustom)
register.filter('slicePerRange',slicePerRange)