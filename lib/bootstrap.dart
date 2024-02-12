import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'di/bloc_providers.dart';
import 'modules/app/app.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrapLite(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    if (kDebugMode) {
      print(details);
    }
  };
  Bloc.observer = const AppBlocObserver();

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorage.webStorageDirectory
            : await getApplicationDocumentsDirectory(),
      );
      return runApp(
        coreBlocProviders(
          child: await builder(),
        ),
      );
    },

    /// this for app monitoring and crash log
    (error, stackTrace) {
      if (kDebugMode) {
        print('Zone error : --> $error \n $stackTrace');
      }
    },
  );
}

Future<void> bootstrap() async {
  return bootstrapLite(
    () {
      if (!kIsWeb && Platform.isAndroid) {
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
        );
      }

      return const App();
    },
  );
}
