import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../providers/theme_provider.dart';
import '../widgets/rive_animation_load.dart';

class TrustDetailPage extends StatelessWidget {
  const TrustDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localizations = AppLocalizations.of(context);
    final textColor = themeProvider.getTextColor(context);
    final cardColor = themeProvider.getCardColor(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.trustDetailsTitle),
        backgroundColor: themeProvider.getHeaderColor(context),
        foregroundColor: themeProvider.getHeaderTextColor(context),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Große Rive Animation
            Container(
              height: 300,
              margin: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: cardColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: RiveAnimationLoad(
                assets: 'assets/animations/trust.riv',
                maxSize: 350,
                stateMachineName: 'State Machine 1',
                pointerEvents: true,
              ),
            ),

            // Titel
            Text(
              localizations.trustDetailsTitle,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),

            // Untertitel
            Text(
              localizations.whyTrustSub,
              style: TextStyle(fontSize: 18, color: textColor.withOpacity(0.8)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),

            // Gründe für Vertrauen
            Card(
              color: cardColor,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTrustPoint(
                      icon: Icons.verified_user,
                      title: localizations.trustPoint1Title,
                      description: localizations.trustPoint1Desc,
                      color: textColor,
                    ),

                    _buildTrustPoint(
                      icon: Icons.attach_money,
                      title: localizations.trustPoint2Title,
                      description: localizations.trustPoint2Desc,
                      color: textColor,
                    ),

                    _buildTrustPoint(
                      icon: Icons.people,
                      title: localizations.trustPoint3Title,
                      description: localizations.trustPoint3Desc,
                      color: textColor,
                    ),

                    _buildTrustPoint(
                      icon: Icons.security,
                      title: localizations.trustPoint4Title,
                      description: localizations.trustPoint4Desc,
                      color: textColor,
                    ),

                    _buildTrustPoint(
                      icon: Icons.support_agent,
                      title: localizations.trustPoint5Title,
                      description: localizations.trustPoint5Desc,
                      color: textColor,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            // Call to Action
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: themeProvider.getPrimaryColor(context).withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: themeProvider
                      .getPrimaryColor(context)
                      .withOpacity(0.3),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    localizations.trustReadyTitle,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    localizations.trustReadySubtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: themeProvider.getButtonColor(context),
                      foregroundColor: themeProvider.getButtonTextColor(
                        context,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(localizations.trustRequestButton),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrustPoint({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: color),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: color.withOpacity(0.8),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
