from django import template

from vahatraDjango.functions import toSlug

register = template.Library()


def snake_case(value):
    return value.replace(' ', '_')


register.filter('toSlug', toSlug)
register.filter('snake_case', snake_case)
