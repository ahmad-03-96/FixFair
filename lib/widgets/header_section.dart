import 'package:fix_fair/widgets/rive_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../providers/language_provider.dart';
import '../providers/theme_provider.dart';
import 'rive_animation_load.dart'; // Import hinzufügen

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final languageProvider = Provider.of<LanguageProvider>(context);
    final localizations = AppLocalizations.of(context);

    final headerColor = themeProvider.getHeaderColor(context);
    final textColor = themeProvider.getHeaderTextColor(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        color: headerColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          // Rive Logo anstelle des Platzhalters
          RiveAnimationLoad(
            maxSize: 250,
            assets: 'assets/animations/truck.riv',
            onTap: () {
              // Optional: Logo-Tap Funktion
              print('Logo wurde angeklickt');
            },
          ),
          RiveAnimationLoad(
            maxSize: 250,
            assets: 'assets/animations/logo.riv',
            onTap: () {
              // Optional: Logo-Tap Funktion
              print('Logo wurde angeklickt');
            },
          ),
          /*
          SizedBox(height: 20),
          Text(
            localizations.appTitle,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          */
          Text(
            localizations.servicesSubtitle,
            style: TextStyle(
              fontSize: 18,
              color: themeProvider.themeMode == ThemeMode.dark
                  ? Colors.white.withOpacity(0.3)
                  : Color(0xFF168853),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),

          // Einstellungen
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: themeProvider.themeMode == ThemeMode.dark
                  ? Colors.black.withOpacity(0.3)
                  : Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: textColor.withOpacity(0.3)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Titel mit Icon
                Row(
                  children: [
                    Icon(Icons.settings, color: textColor, size: 20),
                    SizedBox(width: 8),
                    Text(
                      'Einstellungen',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Dark Mode Einstellung
                _buildSettingItem(
                  icon: Icons.brightness_4,
                  title: 'Dark Mode',
                  textColor: textColor,
                  trailing: Switch(
                    value: themeProvider.themeMode == ThemeMode.dark,
                    onChanged: (value) {
                      themeProvider.setThemeMode(
                        value ? ThemeMode.dark : ThemeMode.light,
                      );
                    },
                    activeColor: themeProvider.themeMode == ThemeMode.dark
                        ? Colors.grey[400]
                        : Colors.blue,
                    activeTrackColor: themeProvider.themeMode == ThemeMode.dark
                        ? Colors.grey[600]
                        : Colors.blue[200],
                  ),
                ),

                Divider(color: textColor.withOpacity(0.3), height: 24),

                // Spracheinstellung
                _buildSettingItem(
                  icon: Icons.language,
                  title: 'Sprache',
                  textColor: textColor,
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: themeProvider.themeMode == ThemeMode.dark
                          ? Colors.black.withOpacity(0.5)
                          : Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: textColor.withOpacity(0.4)),
                    ),
                    child: DropdownButton<Locale>(
                      value: languageProvider.locale,
                      dropdownColor: themeProvider.themeMode == ThemeMode.dark
                          ? Colors.grey[900]
                          : Colors.white,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: textColor,
                        size: 24,
                      ),
                      iconSize: 24,
                      underline: SizedBox(),
                      style: TextStyle(color: textColor, fontSize: 14),
                      onChanged: (Locale? newLocale) {
                        if (newLocale != null) {
                          languageProvider.setLocale(newLocale);
                          // Toast anzeigen
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Sprache geändert / Language changed',
                              ),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        }
                      },
                      items: [
                        _buildLanguageItem('Deutsch', '🇩🇪', 'de', textColor),
                        _buildLanguageItem('English', '🇬🇧', 'en', textColor),
                        _buildLanguageItem('العربية', '🇸🇦', 'ar', textColor),
                        _buildLanguageItem('Türkçe', '🇹🇷', 'tr', textColor),
                        _buildLanguageItem('Русский', '🇷🇺', 'ru', textColor),
                        _buildLanguageItem(
                          'Українська',
                          '🇺🇦',
                          'uk',
                          textColor,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8),

                // Info Text
                Text(
                  'Einstellungen werden automatisch gespeichert',
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor.withOpacity(0.7),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String title,
    required Color textColor,
    required Widget trailing,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: textColor, size: 20),
            SizedBox(width: 12),
            Text(title, style: TextStyle(color: textColor, fontSize: 16)),
          ],
        ),
        trailing,
      ],
    );
  }

  DropdownMenuItem<Locale> _buildLanguageItem(
    String name,
    String flag,
    String languageCode,
    Color textColor,
  ) {
    return DropdownMenuItem<Locale>(
      value: Locale(languageCode),
      child: Row(
        children: [
          Text(flag, style: TextStyle(fontSize: 16)),
          SizedBox(width: 8),
          Text(
            name,
            style: TextStyle(fontSize: 14, color: textColor),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
