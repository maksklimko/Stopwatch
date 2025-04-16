import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:stopwatch/core/constants/app_constants.dart';
import 'package:stopwatch/core/constants/app_theme.dart';
import 'package:stopwatch/core/router/router_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: AppConstants.supportedLocales,
      path: AppConstants.translationsPath,
      fallbackLocale: AppConstants.fallbackLocale,
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme.dark,
      routerConfig: _appRouter.config(),
    );
  }
}
