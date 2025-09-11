import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../providers/theme_provider.dart';

class SeoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    final textColor = themeProvider.getTextColor(context);
    final cardColor = themeProvider.getCardColor(context);
    final buttonColor = themeProvider.getButtonColor(context);
    final primaryColor = themeProvider.getPrimaryColor(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(
          color: textColor, // Replace 'textColor' with your desired color
          width: 0.5, // Optional: specify the border width
        ),
      ),
      child: Column(
        children: [
          // Dekorativer Header
          Container(
            width: 60,
            height: 4,
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: 30),

          // Haupt-Überschrift
          Text(
            'Fix - Fair - ${localizations.seoUmzugsunternehmen}',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: textColor,
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),

          // Untertitel
          Text(
            '${localizations.seoProfessionellUmzug} in ${localizations.seoNordhessen}',
            style: TextStyle(
              fontSize: 18,
              color: textColor.withOpacity(0.8),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),

          // Services Grid im SEO-Stil
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  alignment: WrapAlignment.center,
                  children: [
                    _buildServiceChip(
                      '🚛 ${localizations.seoUmzugKassel}',
                      primaryColor,
                      textColor,
                    ),
                    _buildServiceChip(
                      '🧹 ${localizations.seoEntruempelung}',
                      primaryColor,
                      textColor,
                    ),
                    _buildServiceChip(
                      '🔧 ${localizations.seoMoebelmontage}',
                      primaryColor,
                      textColor,
                    ),
                    _buildServiceChip(
                      '🏢 ${localizations.seoBueroUmzug}',
                      primaryColor,
                      textColor,
                    ),
                    _buildServiceChip(
                      '👵 ${localizations.seoSeniorenUmzug}',
                      primaryColor,
                      textColor,
                    ),
                    _buildServiceChip(
                      '🍳 ${localizations.seoKuechenmontage}',
                      primaryColor,
                      textColor,
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // SEO-Beschreibungstext
                Text(
                  'Ihr zuverlässiger Partner für ${localizations.seoUmzugKassel} und ${localizations.seoNordhessen}. '
                      'Wir bieten ${localizations.seoQualityService} für ${localizations.seoEntruempelung}, '
                      '${localizations.seoHaushaltsaufloesung}, ${localizations.seoMoebelmontage} und ${localizations.seoKuechenmontage}. '
                      '${localizations.seoGuenstigUmzug} mit ${localizations.seoReliableMoving} - '
                      'jetzt kostenloses Angebot anfordern!',
                  style: TextStyle(
                    fontSize: 16,
                    color: textColor.withOpacity(0.9),
                    height: 1.6,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),

          // Call-to-Action Bereich
          Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  primaryColor.withOpacity(0.1),
                  primaryColor.withOpacity(0.2),
                ],
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: primaryColor.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Icon(
                  Icons.star_rate_rounded,
                  size: 40,
                  color: primaryColor,
                ),
                SizedBox(height: 16),
                Text(
                  '${localizations.seoQualityService} garantiert!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Kontaktieren Sie uns für ein kostenloses Angebot zu Ihrem ${localizations.seoUmzugKassel}',
                  style: TextStyle(
                    fontSize: 16,
                    color: textColor.withOpacity(0.8),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Zur Kontaktseite navigieren
                    Navigator.pushNamed(context, '/kontakt');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: textColor,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Jetzt Angebot anfordern'),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),

          // Standort-Bereich
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: primaryColor,
                  size: 24,
                ),
                SizedBox(width: 10),
                Text(
                  'Service in \n${localizations.seoNordhessen}:\n Kassel und Umgebung',
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    fontSize: 16,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceChip(String text, Color primaryColor, Color textColor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: primaryColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}