import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../models/review_model.dart';
import '../providers/file_review_provider.dart';
import '../providers/theme_provider.dart';

class AdminReviewsPage extends StatelessWidget {
  const AdminReviewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fileReviewProvider = Provider.of<FileReviewProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localizations = AppLocalizations.of(context);
    final textColor = themeProvider.getTextColor(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.adminReviewsTitle),
        backgroundColor: themeProvider.getHeaderColor(context),
        foregroundColor: themeProvider.getHeaderTextColor(context),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () async {
              final fileInfo = await Provider.of<FileReviewProvider>(
                context,
                listen: false,
              ).getFileInfo();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Datei-Info'),
                  content: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pfad: ${fileInfo['path']}'),
                        Text('Datei: ${fileInfo['filePath']}'),
                        Text('Existiert: ${fileInfo['exists']}'),
                        Text('Größe: ${fileInfo['size']} bytes'),
                        Text('Bewertungen: ${fileInfo['reviewCount']}'),
                        if (fileInfo.containsKey('error'))
                          Text('Fehler: ${fileInfo['error']}'),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            },
            tooltip: 'Datei-Info anzeigen',
          ),
        ],
      ),
      body: Column(
        children: [
          // Statistik
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatistic(
                    value: fileReviewProvider.totalReviews.toString(),
                    label: localizations.adminStatsReviews,
                    color: textColor,
                  ),
                  _buildStatistic(
                    value: fileReviewProvider.averageRating.toStringAsFixed(1),
                    label: localizations.adminStatsAverage,
                    color: textColor,
                  ),
                  _buildStatistic(
                    value: fileReviewProvider.pendingReviews.length.toString(),
                    label: localizations.adminStatsPending,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ),

          // Bewertungsliste
          Expanded(
            child: ListView.builder(
              itemCount: fileReviewProvider.reviews.length,
              itemBuilder: (context, index) {
                final review = fileReviewProvider.reviews[index];
                return _buildReviewItem(
                  review,
                  fileReviewProvider,
                  context,
                  localizations,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatistic({
    required String value,
    required String label,
    required Color color,
  }) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(label, style: TextStyle(color: color.withOpacity(0.7))),
      ],
    );
  }

  Widget _buildReviewItem(
    Review review,
    FileReviewProvider fileReviewProvider,
    BuildContext context,
    AppLocalizations localizations,
  ) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final textColor = themeProvider.getTextColor(context);

    return Dismissible(
      key: Key(review.id),
      background: Container(color: Colors.red),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) async {
        return await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(localizations.adminDeleteConfirm),
              content: Text(localizations.adminDeleteContent),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text(localizations.adminCancel),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(
                    localizations.adminDelete,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            );
          },
        );
      },
      onDismissed: (direction) {
        fileReviewProvider.deleteReview(review.id);
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(localizations.adminDeleted)));
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: ListTile(
          leading: Icon(Icons.star, color: Colors.amber, size: 30),
          title: Text(
            review.customerName,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                review.serviceType,
                style: TextStyle(color: textColor.withOpacity(0.7)),
              ),
              Text(
                review.comment,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: textColor),
              ),
              Text(
                '${review.rating}/5 ${localizations.adminStatsReviews} • ${review.date.day}.${review.date.month}.${review.date.year}',
                style: TextStyle(
                  fontSize: 12,
                  color: textColor.withOpacity(0.6),
                ),
              ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (review.verified) Icon(Icons.verified, color: Colors.green),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () => fileReviewProvider.deleteReview(review.id),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showClearDialog(BuildContext context, AppLocalizations localizations) {
    final reviewProvider = Provider.of<FileReviewProvider>(
      context,
      listen: false,
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(localizations.adminClearAll),
          content: Text(localizations.adminClearContent),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(localizations.adminCancel),
            ),
            TextButton(
              onPressed: () {
                reviewProvider.clearAllReviews();
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(localizations.adminAllDeleted)),
                );
              },
              child: Text(
                localizations.adminDelete,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
