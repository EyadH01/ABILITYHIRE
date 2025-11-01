import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static const _localizedValues = <String, Map<String, String>>{
    'en': {
      'welcomeTitle': 'Welcome to AbilityHire',
      'welcomeMsg': 'Dedicated to connecting individuals with disabilities to inclusive job opportunities. Join us in building a workforce where everyone belongs and thrives.',
      'scrollQuotes': 'We believe in abilities... not in obstacles. — Believe in yourself and all that you are. — Every challenge is an opportunity to grow. — Your potential is endless. — Together, we build a more inclusive future.',
    },
    'ar': {
      'welcomeTitle': 'أهلاً بك في AbilityHire',
      'welcomeMsg': 'موقع مخصص لربط ذوي الإعاقة بفرص عمل شاملة. انضم إلينا لبناء قوة عاملة حيث يشعر الجميع بالانتماء والنجاح.',
      'scrollQuotes': '...آمن بنفسك وبكل ما أنت عليه — كل تحد هو فرصة للنمو. — إمكانياتك لا حدود لها. — معًا نبني مستقبلًا أكثر شمولًا. — نؤمن بالقدرات... لا بالعقبات',
    },
  };

  String translate(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
