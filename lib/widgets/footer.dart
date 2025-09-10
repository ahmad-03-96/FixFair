import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../providers/theme_provider.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localizations = AppLocalizations.of(context);

    final footerColor = themeProvider.getFooterColor(context);
    final textColor = themeProvider.getFooterTextColor(context);

    return Container(
      color: footerColor,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 20),
          Divider(color: textColor.withOpacity(0.5)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localizations.companyName,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    localizations.address,
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localizations.contact,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    localizations.telephone,
                    style: TextStyle(color: textColor),
                  ),
                  Text(
                    localizations.emailAddress,
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(color: textColor.withOpacity(0.5)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/impressum');
                },
                child: Text(
                  localizations.imprint,
                  style: TextStyle(color: textColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/datenschutz');
                },
                child: Text(
                  localizations.privacy,
                  style: TextStyle(color: textColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/agb');
                },
                child: Text(
                  localizations.terms,
                  style: TextStyle(color: textColor),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            localizations.copyright,
            style: TextStyle(color: textColor.withOpacity(0.7), fontSize: 12),
          ),
        ],
      ),
    );
  }
}
