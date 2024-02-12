part of 'theme_cubit.dart';

extension ThemeStateX on ThemeState {
  ThemeData toThemeData() {
    return map(
      system: (_) => ThemeData.fallback(),
      light: (_) => ThemeData.light(),
      dark: (_) => ThemeData.dark(),
    );
  }
}

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.system() = _System;
  const factory ThemeState.light() = _Light;
  const factory ThemeState.dark() = _Dark;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);
}
