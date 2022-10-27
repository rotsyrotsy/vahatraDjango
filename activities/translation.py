from activities.models import  Typeactivity, Typesubactivity,Activity
from modeltranslation.translator import translator, TranslationOptions

class TypesubactivityTranslationOptions(TranslationOptions):
    fields = ('type',)


class TypeactivityTranslationOptions(TranslationOptions):
    fields = ('type',)

class ActivityTranslationOptions (TranslationOptions):
    fields = ('title','description','note',)

translator.register(Activity,ActivityTranslationOptions)
translator.register(Typesubactivity,TypesubactivityTranslationOptions)
translator.register(Typeactivity,TypeactivityTranslationOptions)
