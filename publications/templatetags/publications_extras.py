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


register.filter('renameFile',renameFile)
register.filter('toSlug', toSlug)
register.filter('snake_case', snake_case)
register.filter('split',split)
register.filter('linebreakcustom',linebreakcustom)
register.filter('slicePerRange',slicePerRange)