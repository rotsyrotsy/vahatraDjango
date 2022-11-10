from pathlib import Path
from activities.models import Activity
import unidecode
from io import BytesIO
from django.core.files import File
from django.core.files.uploadedfile import InMemoryUploadedFile

import os
from math import ceil
from django.utils.text import slugify
import random
import string
def unique_slug_generator(instance: Activity, new_slug = None):
    if new_slug is not None:
        new_slug.split("/")
        slug = "/".join(slugify(el) for el in new_slug.split("/"))
    else:
        strToSlug = slugify(str(instance.idtypeactivity.type_en))
        if instance.idtypesubactivity:
            strToSlug += "/"+slugify(str(instance.idtypesubactivity.type_en))
        strToSlug += "/"+slugify(instance.title_en)+"-"+str(instance.id)
        slug = strToSlug

    return slug

def toSlug(word):
    word = word.strip()
    word = word.lower().replace(" ",'-')
    unaccented_string = unidecode.unidecode(word)
    return unaccented_string

def renameFile(file):
    file = "_".join(slugify(f) for f in file.split())
    # file = file.replace(" ", "_")
    unaccented_string = unidecode.unidecode(file)
    return unaccented_string

def convert_to_webp(file):
    from PIL import Image
    content_type=file.content_type.split("/")[1]
    if content_type == "webp":
        return file

    f_object= InMemoryUploadedFile(file, 
            'ImageField',
            file.name,
            content_type,
            file.size, None)

    new_file_name = str(Path(f_object._name).with_suffix('.webp'))
    image = Image.open(f_object.file)
    # image = image.rotate(-90)
    if image.mode != 'RGB':
        image = image.convert('RGB')
    thumb_io = BytesIO()
    image.save(thumb_io, 'webp', optimize=True, quality = 40)

    new_f_object = File(thumb_io, new_file_name)
    
    return new_f_object

def handle_uploaded_file(f, location):
    if f.content_type.split("/")[0]=="image":
        f = convert_to_webp(f)
    extension = f.name.split(".")
    if len(extension)>1:
        f.name = renameFile(extension[0])+"."+extension[1]
    else:
        f.name=renameFile(f.name)
    path = 'static/'+location+'/'
    isExist = os.path.exists(path)
    if not isExist:
        # Create a new directory because it does not exist 
        os.makedirs(path)
    
    with open(path+f.name, 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)
    
    return f.name

def delete_file(path, location):
    """ Deletes file from filesystem. """
    if path is not None:
        path = 'static/'+location+'/'+path
        if os.path.isfile(path):
            os.remove(path)


def pagination(actualpage, list, item_number, orderby):
    page_number = list.count()
    page_number = ceil(page_number/item_number)

    if (actualpage > page_number):
        actualpage = page_number
    elif actualpage < 1:
        actualpage = 1
    actualpage -= 1

    list = list.order_by(orderby)[(actualpage*item_number):((actualpage*item_number)+item_number)]
    dict={
        'list':list,
        'page_number':page_number
    }
    return dict


def move(source,destination):
    import shutil
    isExist = os.path.exists(destination)
    if not isExist:
        # Create a new directory because it does not exist 
        os.makedirs(destination)
    shutil.move(source,destination)

def get_random_code(length):
    # choose from all lowercase letter
    letters = string.ascii_uppercase+string.digits
    result_str = ''.join(random.choice(letters) for i in range(length))
    return result_str

from string import punctuation

def validPassword(password):
    l, u, p, d = 0, 0, 0, 0
    print(list(punctuation))
    if (len(password) >= 8):
        for i in password:
    
            # counting lowercase alphabets
            if (i.islower()):
                l+=1           
    
            # counting uppercase alphabets
            if (i.isupper()):
                u+=1           
    
            # counting digits
            if (i.isdigit()):
                d+=1           
    
            # counting the mentioned special characters
            if (i in list(punctuation)):
                p+=1

    if (l>=1 and u>=1 and p>=1 and d>=1 and l+p+u+d==len(password)):
        return True
    return False