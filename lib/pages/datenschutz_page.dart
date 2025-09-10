import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../providers/theme_provider.dart';
import '../widgets/rive_animation_load.dart';

class DatenschutzPage extends StatelessWidget {
  const DatenschutzPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localizations = AppLocalizations.of(context);
    final textColor = themeProvider.getTextColor(context);
    final cardColor = themeProvider.getCardColor(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.datenschutzTitle),
        backgroundColor: themeProvider.getHeaderColor(context),
        foregroundColor: themeProvider.getHeaderTextColor(context),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Rive Animation
            RiveAnimationLoad(
              assets: 'assets/animations/privacy.riv',
              maxSize: 500,
              stateMachineName: 'State Machine 1',
            ),

            // Datenschutz Content
            Card(
              color: cardColor,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Titel
                    Center(
                      child: Text(
                        localizations.datenschutzTitle,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Einleitung
                    _buildSection(
                      title: localizations.privacySection1,
                      content: Text(
                        localizations.privacyContent1,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Allgemeine Hinweise
                    _buildSection(
                      title: localizations.privacySection2,
                      content: Text(
                        localizations.privacyContent2,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Datenerfassung
                    _buildSection(
                      title: localizations.privacySection3,
                      content: Text(
                        localizations.privacyContent3,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Analyse-Tools
                    _buildSection(
                      title: localizations.privacySection4,
                      content: Text(
                        localizations.privacyContent4,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Kontaktdaten
                    _buildSection(
                      title: localizations.privacySection5,
                      content: Text(
                        localizations.privacyContent5,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Widerrufsrecht
                    _buildSection(
                      title: localizations.privacySection6,
                      content: Text(
                        localizations.privacyContent6,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget content,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: color,
            ),
          ),
          const SizedBox(height: 12),
          content,
          const Divider(height: 32),
        ],
      ),
    );
  }
}
