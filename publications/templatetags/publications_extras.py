from django import template

register = template.Library()


def snake_case(value):
    return value.replace(' ', '_')


def toSlug(value):
    value = value.lower()
    return value.replace(' ', '-')


register.filter('toSlug', toSlug)
register.filter('snake_case', snake_case)
