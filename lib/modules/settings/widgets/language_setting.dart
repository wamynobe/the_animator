import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../l10n/l10n.dart';
import '../bloc/bloc.dart';

class LanguageSetting extends StatelessWidget {
  const LanguageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final mapLanguageToL10n = {
      Language.system: l10n.system,
      Language.english: l10n.english,
      Language.vietnamese: l10n.vietnamese,
    };
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton<Language>(
            value: state.when(
              system: (_) => Language.system,
              english: () => Language.english,
              vietnamese: () => Language.vietnamese,
            ),
            onChanged: (newValue) {
              if (newValue != null) {
                context.read<LanguageCubit>().onSwitchLanguage(newValue);
              }
            },
            items: Language.values
                .map<DropdownMenuItem<Language>>(
                  (Language value) => DropdownMenuItem<Language>(
                    value: value,
                    child: Text(mapLanguageToL10n[value] ?? ''),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
