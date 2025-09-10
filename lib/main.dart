import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';

import 'l10n/app_localizations.dart';
import 'pages/agb_page.dart';
import 'pages/datenschutz_page.dart';
import 'pages/home_page.dart';
import 'pages/impressum_page.dart';
import 'providers/language_provider.dart';
import 'providers/theme_provider.dart';

void main() {
  usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: Builder(
        builder: (context) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          final languageProvider = Provider.of<LanguageProvider>(context);

          return MaterialApp(
            title: 'Fix & Fair',
            theme: ThemeProvider.lightTheme,
            darkTheme: ThemeProvider.darkTheme,
            themeMode: themeProvider.themeMode,
            locale: languageProvider.locale,
            supportedLocales: [
              Locale('de'),
              Locale('en'),
              Locale('ar'),
              Locale('tr'),
              Locale('ru'),
              Locale('uk'),
            ],
            localizationsDelegates: [
              AppLocalizationsDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: HomePage(),
            debugShowCheckedModeBanner: false,
            routes: {
              '/impressum': (context) => ImpressumPage(),
              '/datenschutz': (context) => DatenschutzPage(),
              '/agb': (context) => AgbPage(), // NEU
            },
            initialRoute: '/',
            onGenerateRoute: (settings) {
              // Handle deep links
              return MaterialPageRoute(builder: (context) => HomePage());
            },

            builder: (context, child) {
              // This ensures the app is fully built before hiding loading screen
              WidgetsBinding.instance.addPostFrameCallback((_) {
                // This event tells the HTML that Flutter is ready
                // The event is caught by our JavaScript above
              });
              return child ?? SizedBox();
            },
          );
        },
      ),
    );
  }
}
