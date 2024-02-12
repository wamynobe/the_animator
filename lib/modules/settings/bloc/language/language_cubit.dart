// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'language_cubit.freezed.dart';
part 'language_cubit.g.dart';
part 'language_state.dart';

enum Language { system, english, vietnamese }

class LanguageCubit extends HydratedCubit<LanguageState> {
  LanguageCubit(this._supportedLocales) : super(const LanguageState.system()) {
    _init();
  }
  final String defaultSystemLocale =
      kIsWeb ? html.window.navigator.language : Platform.localeName;
  final Iterable<Locale> _supportedLocales;

  final kFallbackState = const LanguageState.english();

  /// This method initializes the [LanguageCubit]
  /// and sets the default system locale.
  /// If the system locale is not supported, the fallback state is used.
  /// If user has chosen a language, the system locale is ignored.
  void _init() {
    final isUsingSystemLanguage =
        state.maybeWhen(orElse: () => false, system: (_) => true);
    if (!isUsingSystemLanguage) {
      return;
    }
    // this [defaultSystemLocale.isNotEmpty] case will never result false,
    // but just in case
    if (defaultSystemLocale.isNotEmpty && defaultSystemLocale.contains('_')) {
      final langAndCountryCodes = defaultSystemLocale.split('_');
      late final Locale systemLocale;
      // in case of languageCode only
      if (langAndCountryCodes.length < 2) {
        final languageCode = langAndCountryCodes[0];
        systemLocale = Locale(languageCode);
      } else {
        final languageCode = langAndCountryCodes[0];
        final countryCode = langAndCountryCodes[1];
        systemLocale = Locale(languageCode, countryCode);
      }
      onSystemLanguageChanged(systemLocale);
    }
  }

  /// This method is called when the user changes the language.
  void onSwitchLanguage(Language language) {
    switch (language) {
      case Language.system:
        emit(const LanguageState.system());

      case Language.english:
        emit(const LanguageState.english());

      case Language.vietnamese:
        emit(const LanguageState.vietnamese());
    }
  }

  /// This method is called when the system language changes.
  void onSystemLanguageChanged(
    Locale locale,
  ) {
    final isSupported = _supportedLocales
        .map((locale) => locale.languageCode)
        .contains(locale.languageCode);
    if (isSupported) {
      emit(
        LanguageState.system(
          languageCode: locale.languageCode,
        ),
      );
    } else {
      emit(kFallbackState);
    }
  }

  @override
  LanguageState? fromJson(Map<String, dynamic> json) =>
      LanguageState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(LanguageState state) => state.toJson();
}
