from association.models import Imagetype, Member, Messageofyear, Partner, Post,Typemember
from modeltranslation.translator import translator, TranslationOptions

class MessageofyearTranslationOptions(TranslationOptions):
    fields = ('description',)


class MemberTranslationOptions(TranslationOptions):
    fields = ('description',)

class TypememberTranslationOptions (TranslationOptions):
    fields = ('description','type',)


class PartnerTranslationOptions (TranslationOptions):
    fields = ('description',)

class ImagetypeTranslationOptions (TranslationOptions):
    fields = ('type',)


class PostTranslationOptions (TranslationOptions):
    fields = ('name',)

translator.register(Post,PostTranslationOptions)
translator.register(Imagetype,ImagetypeTranslationOptions)
translator.register(Partner,PartnerTranslationOptions)
translator.register(Typemember,TypememberTranslationOptions)
translator.register(Messageofyear,MessageofyearTranslationOptions)
translator.register(Member,MemberTranslationOptions)