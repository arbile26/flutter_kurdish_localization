import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KurdishWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(_KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishWidgetLocalizations extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  @override
  
  String get reorderItemDown => 'ڕیزکردنەوەی ئایتمی خوارەوە';

  @override
  String get reorderItemLeft => 'ڕیزکردنەوەی ئایتمی لای چەپ';

  @override
  String get reorderItemRight => 'ڕیزکردنەوەی ئایتمی لای ڕاست';

  @override
  String get reorderItemToEnd => 'ڕیزکردنەوەی ئایتمی کۆتایی';

  @override
  String get reorderItemToStart => 'ڕیزکردنەوەی ئایتمی دەستی';

  @override
  String get reorderItemUp => 'ڕیزکردنەوەی ئایتمی سەرەوە';
}