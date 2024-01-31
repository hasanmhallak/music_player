import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/language_notifier.dart';
import '../entities/lang.dart';
import '../l10n/generated/app_localizations.dart';
import '../routes/app_router.dart';
import '../theme/themes.dart';

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  ConsumerState<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    _appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final lang = ref.watch<Lang>(languageProvider);
    // const String locale = 'en';

    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Music Player',
      theme: Themes.dark(),
      locale: Locale(lang.name),
    );
  }
}
