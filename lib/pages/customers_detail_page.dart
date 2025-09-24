import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../l10n/app_localizations.dart';
import '../providers/theme_provider.dart';
import '../widgets/rive_animation_load.dart';

class CustomersDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localizations = AppLocalizations.of(context);
    final textColor = themeProvider.getTextColor(context);
    final cardColor = themeProvider.getCardColor(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.customerTestimonials),
        backgroundColor: themeProvider.getHeaderColor(context),
        foregroundColor: themeProvider.getHeaderTextColor(context),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Große Rive Animation mit Loading
            Container(
              height: 350,
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
                assets: 'assets/animations/customers.riv',
                maxSize: 350,
                stateMachineName: 'State Machine 1',
                pointerEvents: true,
              ),
            ),

            // Titel
            Text(
              localizations.satisfiedClients,
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
              localizations.satisfiedCustomersSub,
              style: TextStyle(fontSize: 18, color: textColor.withOpacity(0.8)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),

            // Google Bewertungen Section
            Card(
              color: cardColor,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      localizations.googleReviews,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      localizations.rateDescription,
                      style: TextStyle(
                        fontSize: 16,
                        color: textColor.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () async {
                        const url = 'https://g.page/r/Cf-LR5QHqNp-EAI/review';
                        final Uri uri = Uri.parse(url);
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri);
                        }
                      },
                      icon: Icon(Icons.star, color: Colors.amber),
                      label: Text(localizations.rateNowButton),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      localizations.supportEmail,
                      style: TextStyle(
                        color: textColor.withOpacity(0.6),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            // Echte Google Bewertungen Embed
            Card(
              color: cardColor,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      localizations.reviewPrompt,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),

                    // Platzhalter für echte Google Reviews
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, size: 50, color: Colors.amber),
                            SizedBox(height: 16),
                            Text(
                              localizations.googleReviews,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: textColor,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              localizations.rateDescription,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: textColor.withOpacity(0.7),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () async {
                                const url =
                                    'https://g.page/r/Cf-LR5QHqNp-EAI/review';
                                final Uri uri = Uri.parse(url);
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri);
                                }
                              },
                              child: Text(localizations.rateNowButton),
                            ),
                          ],
                        ),
                      ),
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
}
