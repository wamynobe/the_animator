part of 'language_cubit.dart';

extension LanguageCubitX on LanguageState {
  Locale toLocale() {
    return when(
      system: (languageCode) => Locale.fromSubtags(
        languageCode: languageCode ?? 'und',
      ),
      english: () => const Locale.fromSubtags(languageCode: 'en'),
      vietnamese: () => const Locale.fromSubtags(languageCode: 'vi'),
    );
  }
}

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.system({
    String? languageCode,
  }) = _System;
  const factory LanguageState.english() = _English;
  const factory LanguageState.vietnamese() = _Vietnamese;

  factory LanguageState.fromJson(Map<String, dynamic> json) =>
      _$LanguageStateFromJson(json);
}
