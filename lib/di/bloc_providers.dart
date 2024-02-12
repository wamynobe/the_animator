import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../l10n/l10n.dart';
import '../modules/settings/bloc/bloc.dart';

MultiBlocProvider coreBlocProviders({required Widget child}) =>
    MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (context) => LanguageCubit(AppLocalizations.supportedLocales),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: child,
    );
