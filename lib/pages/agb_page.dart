import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../providers/theme_provider.dart';
import '../widgets/rive_animation_load.dart';

class AgbPage extends StatelessWidget {
  const AgbPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localizations = AppLocalizations.of(context);
    final textColor = themeProvider.getTextColor(context);
    final cardColor = themeProvider.getCardColor(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.agbTitle),
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
              assets: 'assets/animations/terms.riv',
              maxSize: 500,
              stateMachineName: 'State Machine 1',
            ),

            // AGB Content
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
                        localizations.agbTitle,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // § 1 Geltungsbereich
                    _buildSection(
                      title: localizations.agbSection1,
                      content: Text(
                        localizations.agbContent1,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // § 2 Vertragsschluss
                    _buildSection(
                      title: localizations.agbSection2,
                      content: Text(
                        localizations.agbContent2,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // § 3 Preise und Zahlungsbedingungen
                    _buildSection(
                      title: localizations.agbSection3,
                      content: Text(
                        localizations.agbContent3,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // § 4 Leistungsumfang und Durchführung
                    _buildSection(
                      title: localizations.agbSection4,
                      content: Text(
                        localizations.agbContent4,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // § 5 Widerrufsrecht
                    _buildSection(
                      title: localizations.agbSection5,
                      content: Text(
                        localizations.agbContent5,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // § 6 Haftung
                    _buildSection(
                      title: localizations.agbSection6,
                      content: Text(
                        localizations.agbContent6,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // § 7 Schlussbestimmungen
                    _buildSection(
                      title: localizations.agbSection7,
                      content: Text(
                        localizations.agbContent7,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Kontakt
                    _buildSection(
                      title: localizations.contact,
                      content: Text(
                        '${localizations.companyName}\n'
                        '${localizations.address}\n'
                        '${localizations.emailAddress}\n'
                        '${localizations.telephone}',
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
