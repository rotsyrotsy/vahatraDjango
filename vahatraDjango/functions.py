from pathlib import Path
import unidecode
from io import BytesIO
from django.core.files import File
from django.core.files.uploadedfile import InMemoryUploadedFile

import os
from math import ceil

def toSlug(word):
    word = word.lower().replace(" ",'-')
    unaccented_string = unidecode.unidecode(word)
    return unaccented_string

def renameFile(file):
    file = file.replace(" ", "_")
    unaccented_string = unidecode.unidecode(file)
    return unaccented_string

def reduce_image_size( pic):
    from PIL import Image
    print('initial size: '+str(pic.size))
    img = Image.open(pic)
    if img.mode != 'RGB':
        img = img.convert('RGB')
    thumb_io = BytesIO()
    img.save(thumb_io, 'jpeg', quality=40)
    
    pic_file = File(thumb_io, pic.name)
    print('final size: '+str(pic_file.size))
    return pic_file
    
    

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
    if image.mode != 'RGB':
        image = image.convert('RGB')
    thumb_io = BytesIO()
    image.save(thumb_io, 'webp', optimize=True, quality = 40)

    new_f_object = File(thumb_io, new_file_name)
    
    return new_f_object


def handle_uploaded_file(f, location):
    if f.content_type.split("/")[0]=="image":
        # reduce_pic = reduce_image_size(f)
        f = convert_to_webp(f)

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
