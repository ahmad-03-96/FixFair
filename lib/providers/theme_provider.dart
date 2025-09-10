import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  static final Color primaryGreen = Color(0xFFFFFFFF);
  static final Color secondaryGreen = Color(0xFF000000);
  static final Color darkHeaderFooter = Colors.grey[900]!;
  static final Color darkText = Colors.white;
  static final Color lightText = Color(0xFF000000);
  static final Color darkCard = Colors.grey[800]!;
  static final Color lightCard = Colors.white;
  static final Color lightSecondaryText = Color(0xFF25D366);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryGreen,
    colorScheme: ColorScheme.light(
      primary: primaryGreen,
      secondary: secondaryGreen,
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryGreen,
      foregroundColor: lightText,
    ),
    cardColor: Colors.white,
    dialogTheme: DialogThemeData(backgroundColor: Colors.white),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: darkHeaderFooter,
    colorScheme: ColorScheme.dark(
      primary: darkHeaderFooter,
      secondary: Colors.grey[800]!,
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      backgroundColor: darkHeaderFooter,
      foregroundColor: darkText,
    ),
    cardColor: Colors.grey[800],
    dialogTheme: DialogThemeData(backgroundColor: Colors.grey[800]),
  );

  Color getHeaderColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? darkHeaderFooter : primaryGreen;
  }

  Color getFooterColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? darkHeaderFooter : primaryGreen;
  }

  Color getHeaderTextColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? darkText : lightText;
  }

  Color getFooterTextColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? darkText : lightText;
  }

  Color getTextColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? darkText : lightText;
  }

  Color getSecondaryTextColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? Colors.grey[300]! : lightSecondaryText;
  }

  // Kartenfarben
  Color getCardColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? darkCard : lightCard;
  }

  // Primäre Farbe (Grün)
  Color getPrimaryColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? Colors.grey[700]! : primaryGreen;
  }

  // Sekundäre Farbe (Hellgrün)
  Color getSecondaryColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? Colors.grey[600]! : secondaryGreen;
  }

  // Icon Farbe
  Color getIconColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? Colors.white : primaryGreen;
  }

  Color getButtonColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? Colors.grey : Colors.white;
  }

  Color getButtonTextColor(BuildContext context) {
    return themeMode == ThemeMode.dark ? Colors.white : Colors.black;
  }
}
