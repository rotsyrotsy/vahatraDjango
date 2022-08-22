from django import template

register = template.Library()

def snake_case(value):
    return value.replace(' ','_')

register.filter('snake_case',snake_case)