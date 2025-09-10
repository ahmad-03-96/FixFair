import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../l10n/app_localizations.dart';
import '../providers/theme_provider.dart';
import '../widgets/rive_animation_load.dart';

class ImpressumPage extends StatelessWidget {
  const ImpressumPage({Key? key}) : super(key: key);

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localizations = AppLocalizations.of(context);
    final textColor = themeProvider.getTextColor(context);
    final cardColor = themeProvider.getCardColor(context);
    final primaryColor = themeProvider.getPrimaryColor(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.impressumTitle),
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
              assets: 'assets/animations/legal.riv',
              maxSize: 500,
              stateMachineName: 'State Machine 1',
            ),

            // Impressum Content
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
                        localizations.impressumTitle,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Angaben gemäß § 5 TMG
                    _buildSection(
                      title: localizations.imprintSection1,
                      content: Text(
                        localizations.imprintContent1,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Inhaber
                    _buildSection(
                      title: localizations.imprintSection2,
                      content: Text(
                        localizations.imprintContent2,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Kontakt
                    _buildSection(
                      title: localizations.imprintSection3,
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            localizations.telephone,
                            style: TextStyle(color: textColor),
                          ),
                          _buildLink(
                            text: localizations.emailAddress,
                            url: 'mailto:Info@fix-fair.de',
                            color: primaryColor,
                          ),
                          _buildLink(
                            text: 'E-Mail: aymanshehadeh48@gmail.com',
                            url: 'mailto:aymanshehadeh48@gmail.com',
                            color: primaryColor,
                          ),
                          _buildLink(
                            text: 'Web: www.fix-fair.de',
                            url: 'https://www.fix-fair.de',
                            color: primaryColor,
                          ),
                        ],
                      ),
                      color: textColor,
                    ),

                    // Entwicklung
                    _buildSection(
                      title: localizations.imprintSection4,
                      content: Text(
                        localizations.imprintContent4,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Umsatzsteuer
                    _buildSection(
                      title: localizations.imprintSection5,
                      content: Text(
                        localizations.imprintContent5,
                        style: TextStyle(color: textColor),
                      ),
                      color: textColor,
                    ),

                    // Verantwortlich
                    _buildSection(
                      title: localizations.imprintSection6,
                      content: Text(
                        localizations.imprintContent6,
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
          const SizedBox(height: 8),
          content,
          const Divider(height: 32),
        ],
      ),
    );
  }

  Widget _buildLink({
    required String text,
    required String url,
    required Color color,
  }) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Text(
        text,
        style: TextStyle(color: color, decoration: TextDecoration.underline),
      ),
    );
  }
}
