import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../l10n/app_localizations.dart';
import '../providers/theme_provider.dart';

class Footer extends StatelessWidget {
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

    final footerColor = themeProvider.getFooterColor(context);
    final textColor = themeProvider.getFooterTextColor(context);
    final primaryColor = themeProvider.getPrimaryColor(context);
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return Container(
      decoration: BoxDecoration(
        color: footerColor,
        gradient: isDarkMode
            ? null
            : LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            footerColor,
            footerColor.withOpacity(0.9),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
        border: Border(
          top: BorderSide(
            color: primaryColor.withOpacity(0.3),
            width: 1,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        children: [
          // Hauptinhalt mit Grid-Layout
          Container(
            constraints: BoxConstraints(maxWidth: 1200),
            child: GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 1,
                crossAxisSpacing: 30,
                mainAxisSpacing: 20,
                childAspectRatio: MediaQuery.of(context).size.width > 600 ? 1.5 : 2,
              ),
              children: [
                // Firmeninformationen
                _buildInfoSection(
                  icon: Icons.business,
                  title: localizations.companyName,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        localizations.address,
                        style: TextStyle(
                          color: textColor.withOpacity(0.9),
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Kassel & Nordhessen',
                        style: TextStyle(
                          color: textColor.withOpacity(0.7),
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  textColor: textColor,
                  primaryColor: primaryColor,
                ),

                // Kontaktinformationen
                _buildInfoSection(
                  icon: Icons.phone,
                  title: localizations.contact,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => _launchURL('tel:+4917612345678'),
                        child: Row(
                          children: [
                            Icon(Icons.phone, size: 16, color: primaryColor),
                            SizedBox(width: 8),
                            Text(
                              localizations.telephone,
                              style: TextStyle(
                                color: textColor.withOpacity(0.9),
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () => _launchURL('mailto:Info@fix-fair.de'),
                        child: Row(
                          children: [
                            Icon(Icons.email, size: 16, color: primaryColor),
                            SizedBox(width: 8),
                            Text(
                              localizations.emailAddress,
                              style: TextStyle(
                                color: textColor.withOpacity(0.9),
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () => _launchURL('https://wa.me/4917612345678'),
                        child: Row(
                          children: [
                            Icon(Icons.message, size: 16, color: primaryColor),
                            SizedBox(width: 8),
                            Text(
                              'WhatsApp: +49 176 12345678',
                              style: TextStyle(
                                color: textColor.withOpacity(0.9),
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  textColor: textColor,
                  primaryColor: primaryColor,
                ),

                // Service-Bereich
                _buildInfoSection(
                  icon: Icons.build,
                  title: localizations.servicesTitle,
                  content: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      _buildServiceChip(localizations.umzugsservice, primaryColor, textColor),
                      _buildServiceChip(localizations.entruempelung, primaryColor, textColor),
                      _buildServiceChip(localizations.trockenbau, primaryColor, textColor),
                      _buildServiceChip(localizations.abbruch, primaryColor, textColor),
                      _buildServiceChip(localizations.gebaeudereinigung, primaryColor, textColor),
                      _buildServiceChip(localizations.bodenleger, primaryColor, textColor),
                      _buildServiceChip(localizations.streichen, primaryColor, textColor),
                      _buildServiceChip(localizations.tapezieren, primaryColor, textColor),
                      _buildServiceChip(localizations.gartenarbeit, primaryColor, textColor),
                      _buildServiceChip(localizations.hausmeisterservice, primaryColor, textColor),
                      _buildServiceChip(localizations.kitchenAssembly, primaryColor, textColor),
                      _buildServiceChip(localizations.assemblies, primaryColor, textColor),
                      _buildServiceChip(localizations.householdLiquidation, primaryColor, textColor),
                      _buildServiceChip(localizations.somethingelse, primaryColor, textColor),
                    ],
                  ),
                  textColor: textColor,
                  primaryColor: primaryColor,
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          // Trennlinie
          Container(

            height: 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.transparent,
                  primaryColor.withOpacity(0.3),
                  Colors.transparent,
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Rechtliche Links
          Wrap(

            spacing: 20,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              _buildLegalLink(
                text: localizations.imprint,
                onPressed: () => Navigator.pushNamed(context, '/impressum'),
                textColor: textColor,
                primaryColor: primaryColor,
              ),
              _buildLegalLink(
                text: localizations.privacy,
                onPressed: () => Navigator.pushNamed(context, '/datenschutz'),
                textColor: textColor,
                primaryColor: primaryColor,
              ),
              _buildLegalLink(
                text: localizations.terms,
                onPressed: () => Navigator.pushNamed(context, '/agb'),
                textColor: textColor,
                primaryColor: primaryColor,
              ),
            ],
          ),

          SizedBox(height: 20),

          // Social Media Links
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialIcon(
                icon: Icons.facebook,
                onPressed: () => _launchURL('https://facebook.com/fixfairkassel'),
                primaryColor: primaryColor,
              ),
              SizedBox(width: 15),
              _buildSocialIcon(
                icon: Icons.message,
                onPressed: () => _launchURL('https://wa.me/4917612345678'),
                primaryColor: primaryColor,
              ),
              SizedBox(width: 15),
              _buildSocialIcon(
                icon: Icons.email,
                onPressed: () => _launchURL('mailto:Info@fix-fair.de'),
                primaryColor: primaryColor,
              ),
            ],
          ),

          SizedBox(height: 20),

          // Copyright
          Text(
            localizations.copyright,
            style: TextStyle(
              color: textColor.withOpacity(0.7),
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 10),

          // Made with Love
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Made with ',
                style: TextStyle(
                  color: textColor.withOpacity(0.6),
                  fontSize: 11,
                ),
              ),
              Icon(Icons.favorite, size: 12, color: Colors.red),
              Text(
                ' in Kassel',
                style: TextStyle(
                  color: textColor.withOpacity(0.6),
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection({
    required IconData icon,
    required String title,
    required Widget content,
    required Color textColor,
    required Color primaryColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 20, color: primaryColor),
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        content,
      ],
    );
  }

  Widget _buildServiceChip(String text, Color primaryColor, Color textColor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: primaryColor.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor.withOpacity(0.9),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildLegalLink({
    required String text,
    required VoidCallback onPressed,
    required Color textColor,
    required Color primaryColor,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor.withOpacity(0.8),
          fontSize: 13,
          decoration: TextDecoration.underline,
          decorationColor: primaryColor.withOpacity(0.5),
        ),
      ),
    );
  }

  Widget _buildSocialIcon({
    required IconData icon,
    required VoidCallback onPressed,
    required Color primaryColor,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      iconSize: 20,
      color: primaryColor,
      style: IconButton.styleFrom(
        backgroundColor: primaryColor.withOpacity(0.1),
        padding: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: primaryColor.withOpacity(0.3)),
        ),
      ),
    );
  }
}