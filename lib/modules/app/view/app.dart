import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/l10n.dart';
import '../../home/views/home_screen.dart';
import '../../settings/bloc/bloc.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
    super.didChangeLocales(locales);
    final languageCubit = context.read<LanguageCubit>();
    final isUsingSystemLanguage = languageCubit.state.maybeWhen(
      orElse: () => false,
      system: (_) => true,
    );
    if (!isUsingSystemLanguage) {
      return;
    }
    if (locales != null &&
        locales.isNotEmpty &&
        languageCubit.state == const LanguageState.system()) {
      languageCubit.onSystemLanguageChanged(
        locales.first,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ThemeCubit>().state.toThemeData(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: context.watch<LanguageCubit>().state.toLocale(),
      home: const HomeScreen(),
    );
  }
}
