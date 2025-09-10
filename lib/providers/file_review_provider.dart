import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/review_model.dart';

class FileReviewProvider with ChangeNotifier {
  List<Review> _reviews = [];
  final List<Review> _pendingReviews = [];
  static const String _storageKey = 'reviews_data';

  List<Review> get reviews => _reviews;

  List<Review> get pendingReviews => _pendingReviews;

  int get totalReviews => _reviews.length;

  double get averageRating => _reviews.isEmpty
      ? 0
      : _reviews.map((r) => r.rating).reduce((a, b) => a + b) / _reviews.length;

  FileReviewProvider() {
    _loadReviews();
  }

  // Lade Bewertungen (unterschiedlich für Web und Mobile)
  Future<void> _loadReviews() async {
    try {
      if (kIsWeb) {
        // Für Web: Shared Preferences verwenden
        await _loadFromSharedPreferences();
      } else {
        // Für Mobile: Dateisystem verwenden
        await _loadFromFile();
      }
      if (kDebugMode) {
        print('${_reviews.length} Bewertungen geladen');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Fehler beim Laden der Bewertungen: $e');
      }
      _reviews = [];
    }
  }

  // Für Web: Shared Preferences
  Future<void> _loadFromSharedPreferences() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? reviewsJson = prefs.getString(_storageKey);

      if (reviewsJson != null && reviewsJson.isNotEmpty) {
        final List<dynamic> jsonList = json.decode(reviewsJson);
        _reviews = jsonList.map((json) => Review.fromJson(json)).toList();
        notifyListeners();
      } else {
        _reviews = [];
      }
    } catch (e) {
      if (kDebugMode) {
        print('Fehler beim Laden aus SharedPreferences: $e');
      }
      _reviews = [];
    }
  }

  // Für Mobile: Dateisystem
  Future<void> _loadFromFile() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/reviews.json');

      if (await file.exists()) {
        final contents = await file.readAsString();
        if (contents.isNotEmpty) {
          final List<dynamic> jsonList = json.decode(contents);
          _reviews = jsonList.map((json) => Review.fromJson(json)).toList();
          notifyListeners();
        } else {
          _reviews = [];
        }
      } else {
        _reviews = [];
      }
    } catch (e) {
      if (kDebugMode) {
        print('Fehler beim Laden aus Datei: $e');
      }
      _reviews = [];
    }
  }

  // Speichere Bewertungen (unterschiedlich für Web und Mobile)
  Future<void> _saveReviews() async {
    try {
      if (kIsWeb) {
        await _saveToSharedPreferences();
      } else {
        await _saveToFile();
      }
      if (kDebugMode) {
        print('${_reviews.length} Bewertungen gespeichert');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Fehler beim Speichern der Bewertungen: $e');
      }
    }
  }

  // Für Web: Shared Preferences
  Future<void> _saveToSharedPreferences() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String reviewsJson = json.encode(
        _reviews.map((r) => r.toJson()).toList(),
      );
      await prefs.setString(_storageKey, reviewsJson);
    } catch (e) {
      if (kDebugMode) {
        print('Fehler beim Speichern in SharedPreferences: $e');
      }
    }
  }

  // Für Mobile: Dateisystem
  Future<void> _saveToFile() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/reviews.json');
      final String reviewsJson = json.encode(
        _reviews.map((r) => r.toJson()).toList(),
      );
      await file.writeAsString(reviewsJson);
    } catch (e) {
      if (kDebugMode) {
        print('Fehler beim Speichern in Datei: $e');
      }
    }
  }

  // Neue Bewertung hinzufügen
  void addReview(Review review) {
    _pendingReviews.add(review);
    notifyListeners();

    // Verifizierungsprozess simulieren
    Future.delayed(const Duration(seconds: 2), () {
      _pendingReviews.remove(review);
      _reviews.insert(0, review);
      _saveReviews();
      notifyListeners();
    });
  }

  // Bewertung löschen
  Future<void> deleteReview(String reviewId) async {
    _reviews.removeWhere((review) => review.id == reviewId);
    await _saveReviews();
    notifyListeners();
  }

  // Alle Bewertungen löschen
  Future<void> clearAllReviews() async {
    _reviews.clear();
    await _saveReviews();
    notifyListeners();
  }

  // Debug-Info
  Future<Map<String, dynamic>> getFileInfo() async {
    try {
      if (kIsWeb) {
        final prefs = await SharedPreferences.getInstance();
        final exists = prefs.containsKey(_storageKey);
        final data = prefs.getString(_storageKey);
        final size = data?.length ?? 0;

        return {
          'platform': 'Web',
          'storage': 'SharedPreferences',
          'exists': exists,
          'size': size,
          'reviewCount': _reviews.length,
        };
      } else {
        final directory = await getApplicationDocumentsDirectory();
        final file = File('${directory.path}/reviews.json');
        final exists = await file.exists();
        final size = exists ? (await file.length()) : 0;

        return {
          'platform': 'Mobile',
          'storage': 'File System',
          'exists': exists,
          'size': size,
          'path': directory.path,
          'filePath': '${directory.path}/reviews.json',
          'reviewCount': _reviews.length,
        };
      }
    } catch (e) {
      return {'error': e.toString()};
    }
  }
}
