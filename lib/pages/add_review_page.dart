import 'package:fix_fair/providers/file_review_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../models/review_model.dart';
import '../providers/theme_provider.dart';

class AddReviewPage extends StatefulWidget {
  const AddReviewPage({Key? key}) : super(key: key);

  @override
  _AddReviewPageState createState() => _AddReviewPageState();
}

class _AddReviewPageState extends State<AddReviewPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _serviceController = TextEditingController();
  final TextEditingController _commentController = TextEditingController();
  int _rating = 5;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final textColor = themeProvider.getTextColor(context);
    final cardColor = themeProvider.getCardColor(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.addReviewTitle),
        backgroundColor: themeProvider.getHeaderColor(context),
        foregroundColor: themeProvider.getHeaderTextColor(context),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                localizations.reviewTitle,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              SizedBox(height: 20),

              // Sterne-Bewertung
              Card(
                color: cardColor,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        localizations.reviewRatingQuestion,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(5, (index) {
                            return IconButton(
                              icon: Icon(
                                index < _rating
                                    ? Icons.star
                                    : Icons.star_border,
                                size: 40,
                                color: Colors.amber,
                              ),
                              onPressed: () {
                                setState(() {
                                  _rating = index + 1;
                                });
                              },
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Name
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: localizations.reviewNameLabel,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return localizations.reviewNameError;
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              // Service Type
              TextFormField(
                controller: _serviceController,
                decoration: InputDecoration(
                  labelText: localizations.reviewServiceLabel,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.work),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return localizations.reviewServiceError;
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              // Kommentar
              TextFormField(
                controller: _commentController,
                decoration: InputDecoration(
                  labelText: localizations.reviewCommentLabel,
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                  prefixIcon: Icon(Icons.comment),
                ),
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return localizations.reviewCommentError;
                  }
                  if (value.length < 10) {
                    return localizations.reviewMinLengthError;
                  }
                  return null;
                },
              ),

              SizedBox(height: 30),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: () => _submitReview(context), // Kontext übergeben
                  style: ElevatedButton.styleFrom(
                    backgroundColor: themeProvider.getButtonColor(context),
                    foregroundColor: themeProvider.getButtonTextColor(context),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(localizations.reviewSubmitButton),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitReview(BuildContext context) {
    // Kontext als Parameter
    final localizations = AppLocalizations.of(
      context,
    ); // Localizations hier holen

    if (_formKey.currentState!.validate()) {
      final review = Review(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        customerName: _nameController.text,
        serviceType: _serviceController.text,
        rating: _rating,
        comment: _commentController.text,
        date: DateTime.now(),
      );

      Provider.of<FileReviewProvider>(context, listen: false).addReview(review);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(localizations.reviewThankYou),
          duration: Duration(seconds: 2),
        ),
      );

      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _serviceController.dispose();
    _commentController.dispose();
    super.dispose();
  }
}
