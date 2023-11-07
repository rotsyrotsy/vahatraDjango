from django import template

register = template.Library()

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