// lib/providers/web_review_provider.dart
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../models/review_model.dart';
import 'dart:html' as html; // Für LocalStorage

class WebReviewProvider with ChangeNotifier {
  List<Review> _reviews = [];
  final List<Review> _pendingReviews = [];
  static const String _storageKey = 'fix_fair_reviews';

  List<Review> get reviews => _reviews;
  List<Review> get pendingReviews => _pendingReviews;
  int get totalReviews => _reviews.length;
  double get averageRating => _reviews.isEmpty ? 0 :
  _reviews.map((r) => r.rating).reduce((a, b) => a + b) / _reviews.length;

  WebReviewProvider() {
    _loadReviews();
  }

  // Bewertungen aus LocalStorage laden
  void _loadReviews() {
    try {
      if (kIsWeb) {
        final storedData = _getFromLocalStorage();
        if (storedData != null && storedData.isNotEmpty) {
          final List<dynamic> jsonList = json.decode(storedData);
          _reviews = jsonList.map((json) => Review.fromJson(json)).toList();
          if (kDebugMode) {
            print('${_reviews.length} Bewertungen geladen');
          }
        } else {
          // Fallback: Beispielbewertungen
          _reviews = _getSampleReviews();
          _saveReviews();
        }
      } else {
        // Für Mobile: Später SharedPreferences hinzufügen
        _reviews = _getSampleReviews();
      }
      notifyListeners();
    } catch (e) {
      if (kDebugMode) {
        print('Fehler beim Laden: $e');
      }
      _reviews = _getSampleReviews();
    }
  }

  // In LocalStorage speichern
  void _saveReviews() {
    try {
      if (kIsWeb) {
        final String reviewsJson = json.encode(_reviews.map((r) => r.toJson()).toList());
        _saveToLocalStorage(reviewsJson);
        if (kDebugMode) {
          print('${_reviews.length} Bewertungen gespeichert');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Fehler beim Speichern: $e');
      }
    }
  }

  // LocalStorage Zugriff für Web
  String? _getFromLocalStorage() {
    try {
      // ignore: undefined_prefixed_name
      return html.window.localStorage[_storageKey];
    } catch (e) {
      return null;
    }
  }

  void _saveToLocalStorage(String data) {
    try {
      // ignore: undefined_prefixed_name
      html.window.localStorage[_storageKey] = data;
    } catch (e) {
      if (kDebugMode) {
        print('LocalStorage error: $e');
      }
    }
  }

  // Beispielbewertungen
  List<Review> _getSampleReviews() {
    return [
      Review(
        id: '1',
        customerName: 'Thomas Müller',
        serviceType: 'Büroumzug',
        rating: 5,
        comment: 'Perfekter Service! Sehr professionell und zuverlässig.',
        date: DateTime(2024, 1, 15),
        verified: true,
      ),
      Review(
        id: '2',
        customerName: 'Sarah Schmidt',
        serviceType: 'Privatumzug',
        rating: 4,
        comment: 'Gute Arbeit, pünktlich und freundlich. Preis war fair.',
        date: DateTime(2024, 2, 20),
        verified: true,
      ),
    ];
  }

  void addReview(Review review) {
    _pendingReviews.add(review);
    notifyListeners();

    Future.delayed(const Duration(seconds: 2), () {
      _pendingReviews.remove(review);
      _reviews.insert(0, review);
      _saveReviews(); // Automatisch speichern
      notifyListeners();
    });
  }

  Future<void> deleteReview(String reviewId) async {
    _reviews.removeWhere((review) => review.id == reviewId);
    _saveReviews(); // Speichern nach Löschen
    notifyListeners();
  }

  Future<void> clearAllReviews() async {
    _reviews.clear();
    _saveReviews(); // Speichern nach Löschen
    notifyListeners();
  }

  // Debug-Methode zum Anzeigen der gespeicherten JSON-Daten
  String getDebugJson() {
    return json.encode(_reviews.map((r) => r.toJson()).toList());
  }

}