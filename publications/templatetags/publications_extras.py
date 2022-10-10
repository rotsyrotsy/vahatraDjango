from django import template

from vahatraDjango.functions import renameFile, toSlug

register = template.Library()


def snake_case(value):
    return value.replace(' ', '_')

register.filter('renameFile',renameFile)
register.filter('toSlug', toSlug)
register.filter('snake_case', snake_case)
