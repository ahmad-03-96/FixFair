import 'package:fix_fair/pages/service_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';

import 'l10n/app_localizations.dart';
import 'models/service_model.dart';
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
            title: 'Fix - Fair',
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
            onGenerateRoute: (settings) {
              // SEO-optimierte URL-Routing
              switch (settings.name) {
              // Service Seiten
                case '/umzug-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('umzugsservice', context),
                  ));
                case '/entruempelung-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('entruempelung', context),
                  ));
                case '/trockenbau-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('trockenbau', context),
                  ));
                case '/abbrucharbeiten-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('abbruch', context),
                  ));
                case '/gebaeudereinigung-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('gebaeudereinigung', context),
                  ));
                case '/bodenverlegung-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('bodenleger', context),
                  ));
                case '/malerarbeiten-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('streichen', context),
                  ));
                case '/tapezierarbeiten-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('tapezieren', context),
                  ));
                case '/gartenarbeit-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('gartenarbeit', context),
                  ));
                case '/hausmeisterservice-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('hausmeisterservice', context),
                  ));
                case '/kuechenmontage-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('kuechenmontage', context),
                  ));
                case '/moebelmontage-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('moebelmontage', context),
                  ));
                case '/haushaltsaufloesung-kassel':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('haushaltsaufloesung', context),
                  ));
                case '/sonstige-dienstleistungen':
                  return MaterialPageRoute(builder: (context) => ServiceDetailPage(
                    service: getServiceById('sonstiges', context),
                  ));

              // Info Seiten
                case '/impressum':
                  return MaterialPageRoute(builder: (context) => ImpressumPage());
                case '/datenschutz':
                  return MaterialPageRoute(builder: (context) => DatenschutzPage());
                case '/agb':
                  return MaterialPageRoute(builder: (context) => AgbPage());

              // Homepage
                default:
                  return MaterialPageRoute(builder: (context) => HomePage());
              }
            },
            initialRoute: '/',

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
