from publications.models import  Typepublication, Publication
from modeltranslation.translator import translator, TranslationOptions

class PublicationTranslationOptions(TranslationOptions):
    fields = ('description',)


class TypepublicationTranslationOptions(TranslationOptions):
    fields = ('type',)

translator.register(Publication,PublicationTranslationOptions)
translator.register(Typepublication,TypepublicationTranslationOptions)