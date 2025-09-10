import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../models/review_model.dart';
import '../providers/file_review_provider.dart';
import '../providers/theme_provider.dart';
import '../widgets/rive_animation_load.dart';
import 'add_review_page.dart';

class CustomersDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fileReviewProvider = Provider.of<FileReviewProvider>(context);
    final localizations = AppLocalizations.of(context);
    final textColor = themeProvider.getTextColor(context);
    final cardColor = themeProvider.getCardColor(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.satisfiedCustomers),
        backgroundColor: themeProvider.getHeaderColor(context),
        foregroundColor: themeProvider.getHeaderTextColor(context),
        elevation: 4,
        actions: [
          IconButton(
            icon: Icon(Icons.add_comment),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddReviewPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Große Rive Animation
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
              ),
            ),

            // Titel und Bewertungsstatistik
            Card(
              color: cardColor,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      '${fileReviewProvider.totalReviews} Bewertungen',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          fileReviewProvider.averageRating.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.amber, size: 32),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Durchschnittliche Bewertung',
                      style: TextStyle(color: textColor.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            // Bewertungen Liste
            if (fileReviewProvider.reviews.isNotEmpty) ...[
              Text(
                'Kundenbewertungen',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              SizedBox(height: 20),

              Column(
                children: fileReviewProvider.reviews
                    .map(
                      (review) =>
                          _buildTestimonial(review: review, color: textColor),
                    )
                    .toList(),
              ),
            ],

            SizedBox(height: 30),

            // Call to Action für Bewertung
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
                    'Eigene Erfahrung teilen?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Helfen Sie anderen Kunden mit Ihrer Bewertung!',
                    style: TextStyle(color: textColor.withOpacity(0.8)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddReviewPage(),
                        ),
                      );
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
                    child: Text('Bewertung schreiben'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTestimonial({required Review review, required Color color}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                review.customerName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: color,
                ),
              ),
              if (review.verified)
                Icon(Icons.verified, color: Colors.green, size: 16),
            ],
          ),
          SizedBox(height: 5),
          Text(
            review.serviceType,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: color.withOpacity(0.7),
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < review.rating ? Icons.star : Icons.star_border,
                color: Colors.amber,
                size: 20,
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            review.comment,
            style: TextStyle(color: color.withOpacity(0.8), height: 1.4),
          ),
          SizedBox(height: 8),
          Text(
            '${review.date.day}.${review.date.month}.${review.date.year}',
            style: TextStyle(color: color.withOpacity(0.6), fontSize: 12),
          ),
        ],
      ),
    );
  }
}
