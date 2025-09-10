import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../models/review_model.dart';
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
