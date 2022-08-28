from django import template

register = template.Library()

def float_comma_to_dot(value):
    number = str(value)
    number.replace(',', '.')
    return number

register.filter('float_comma_to_dot',float_comma_to_dot)