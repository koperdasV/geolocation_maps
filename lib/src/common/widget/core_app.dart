import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:geolocation_maps/l10n/l10n.dart';
import 'package:geolocation_maps/src/common/router/app_router.dart';
import 'package:geolocation_maps/theme/app_theme.dart';
import 'package:meta/meta.dart' show internal;

/// {@template material_context.material_context}
/// {@endtemplate}
class CoreApp extends StatefulWidget {
  /// {@macro material_context.material_context}
  const CoreApp({
    super.key,
  });

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _CoreAppState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_CoreAppState>();

  @override
  State<CoreApp> createState() => _CoreAppState();
}

// const systemUiOverlayStyle = SystemUiOverlayStyle(
//   statusBarColor: Colors.transparent, // status bar color
//   statusBarBrightness: Brightness.light, //status bar brigtness
//   statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
// );
class _CoreAppState extends State<CoreApp> {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    final routerController = AppRouter.of(context);
    return MaterialApp.router(
      theme: buildThemeData(),
      title: 'Packages',
      restorationScopeId: 'app',
      routeInformationParser: routerController.router.routeInformationParser,
      routeInformationProvider:
          routerController.router.routeInformationProvider,
      routerDelegate: routerController.router.routerDelegate,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        //AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en', 'US'),
    );
  }
}
