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
        title: Text(
          '${localizations.datenschutzTitle} - ${localizations.privacyPolicy}',
        ),
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
                        '${localizations.datenschutzTitle} - ${localizations.privacyPolicy}',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Datenschutz auf einen Blick
                    _buildSection(
                      title: localizations.privacyOverview,
                      content: Text(
                        localizations.privacyContent1,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Datenerfassung auf dieser Website
                    _buildSection(
                      title: localizations.dataCollection,
                      content: Text(
                        localizations.privacyContent2,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Wie erfassen wir Ihre Daten?
                    _buildSection(
                      title: localizations.howWeCollect,
                      content: Text(
                        localizations.privacyContent3,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Analyse-Tools
                    _buildSection(
                      title: localizations.analyticsTools,
                      content: Text(
                        localizations.privacyContent4,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Kontaktdaten
                    _buildSection(
                      title: localizations.responsibleParty,
                      content: Text(
                        localizations.privacyContent5,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Widerrufsrecht
                    _buildSection(
                      title: localizations.revokeConsent,
                      content: Text(
                        localizations.privacyContent6,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Allgemeine Hinweise
                    _buildSection(
                      title: localizations.generalInfo,
                      content: Text(
                        'Datenschutz\n\n${localizations.privacyContent2}',
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Speicherdauer
                    _buildSection(
                      title: localizations.storageDuration,
                      content: Text(
                        'Soweit innerhalb dieser Datenschutzerklärung keine speziellere Speicherdauer genannt wurde, '
                        'verbleiben Ihre personenbezogenen Daten bei uns, bis der Zweck für die Datenverarbeitung '
                        'entfällt.',
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // SSL-Verschlüsselung
                    _buildSection(
                      title: localizations.sslEncryption,
                      content: Text(
                        'Diese Seite nutzt aus Sicherheitsgründen und zum Schutz der Übertragung vertraulicher Inhalte '
                        'eine SSL- bzw. TLS-Verschlüsselung.',
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
