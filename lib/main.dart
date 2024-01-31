import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/application/language_notifier.dart';
import 'core/infrastructure/local_service.dart';
import 'core/presentation/app_widget.dart';

void main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();

  // Make device orientation on portrait only.
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Preserve splash screen while making initialization.
  FlutterNativeSplash.preserve(widgetsBinding: binding);

  // Access Provider without a context.
  final container = ProviderContainer();

  // initialize [LocalService].
  await container.read(localServiceProvider).init();

  // initialize app language.
  container.read(languageProvider.notifier).initLang();

  // Remove splash screen after we done with initialization.
  FlutterNativeSplash.remove();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const AppWidget(),
    ),
  );
}
