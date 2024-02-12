import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../l10n/l10n.dart';
import '../bloc/theme/theme_cubit.dart';
import '../widgets/language_setting.dart';
import '../widgets/switch_setting.dart';

class TheAnimatorSettings extends StatelessWidget {
  const TheAnimatorSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        final darkModeSubTittle = state.maybeWhen(
          orElse: () => l10n.off,
          dark: () => l10n.on,
        );
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SwitchSetting(
                title: l10n.darkMode,
                onChanged: (isDarkMode) {
                  context.read<ThemeCubit>().onSwitchTheme(isDark: isDarkMode);
                },
                subTitle: darkModeSubTittle,
                value: state.maybeWhen(
                  orElse: () => false,
                  dark: () => true,
                ),
              ),
              const LanguageSetting(),
            ],
          ),
        );
      },
    );
  }
}
