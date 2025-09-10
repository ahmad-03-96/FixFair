import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../l10n/app_localizations.dart';

class DualActionButton extends StatelessWidget {
  final VoidCallback onWhatsAppPressed;
  final VoidCallback onEmailPressed;

  const DualActionButton({
    required this.onWhatsAppPressed,
    required this.onEmailPressed,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: onWhatsAppPressed,
          icon: Icon(Icons.message, size: 24),
          label: Text(
            localizations.whatsappButton,
            style: TextStyle(fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF25D366),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 10),
        OutlinedButton.icon(
          onPressed: onEmailPressed,
          icon: Icon(Icons.email, size: 24),
          label: Text(
            localizations.emailButton,
            style: TextStyle(fontSize: 16),
          ),
          style: OutlinedButton.styleFrom(
            foregroundColor: Color(0xFF168A55),
            side: BorderSide(color: Color(0xFF168A55)),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

// Hilfsfunktionen für WhatsApp und Email
class ContactUtils {
  static Future<void> sendWhatsAppRequest({
    required BuildContext context,
    required String serviceName,
    required String name,
    required String email,
    required String phone,
    required String message,
    required String moveInAddress,
    required String moveOutAddress,
    required String roomCount,
    required String inspectionType,
  }) async {
    final localizations = AppLocalizations.of(context);

    // Validierung
    if (name.isEmpty ||
        phone.isEmpty ||
        moveInAddress.isEmpty ||
        moveOutAddress.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(localizations.errorRequiredFields)),
      );
      return;
    }

    String text =
        "Hallo! Ich interessiere mich für ein Angebot:\n\n"
        "📋 **Service:** $serviceName\n\n"
        "👤 **Persönliche Daten:**\n"
        "• Name: $name\n"
        "• E-Mail: ${email.isNotEmpty ? email : 'nicht angegeben'}\n"
        "• Telefon: $phone\n\n"
        "🏠 **Umzugsdaten:**\n"
        "• Einzugsadresse: $moveInAddress\n"
        "• Auszugsadresse: $moveOutAddress\n"
        "• Zimmeranzahl: ${roomCount.isNotEmpty ? roomCount : 'nicht angegeben'}\n"
        "• Besichtigung: ${inspectionType.isNotEmpty ? inspectionType : 'nicht angegeben'}\n\n"
        "💬 **Weitere Informationen:**\n"
        "${message.isNotEmpty ? message : 'keine zusätzliche Nachricht'}\n\n"
        "Ich freue mich auf Ihre Rückmeldung!";

    String encodedText = Uri.encodeFull(text);
    // HIER DEINE EIGENE WHATSAPP-NUMMER EINTRAGEN:
    String url = "https://wa.me/+491627908021?text=$encodedText";

    try {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(localizations.errorWhatsapp)));
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Fehler: $e')));
    }
  }

  static Future<void> sendEmailRequest({
    required BuildContext context,
    required String serviceName,
    required String name,
    required String email,
    required String phone,
    required String message,
    required String moveInAddress,
    required String moveOutAddress,
    required String roomCount,
    required String inspectionType,
  }) async {
    final localizations = AppLocalizations.of(context);

    // Validierung
    if (name.isEmpty ||
        phone.isEmpty ||
        moveInAddress.isEmpty ||
        moveOutAddress.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(localizations.errorRequiredFields)),
      );
      return;
    }

    final subject = 'Anfrage für: $serviceName';
    final body =
        'Sehr geehrtes Team,\n\n'
        'ich interessiere mich für folgende Dienstleistung:\n'
        'Service: $serviceName\n\n'
        'Meine Kontaktdaten:\n'
        'Name: $name\n'
        'Telefon: $phone\n'
        'E-Mail: ${email.isNotEmpty ? email : "nicht angegeben"}\n\n'
        'Umzugsdaten:\n'
        'Einzugsadresse: $moveInAddress\n'
        'Auszugsadresse: $moveOutAddress\n'
        'Zimmeranzahl: ${roomCount.isNotEmpty ? roomCount : "nicht angegeben"}\n'
        'Besichtigungsart: ${inspectionType.isNotEmpty ? inspectionType : "nicht angegeben"}\n\n'
        'Weitere Informationen:\n'
        '${message.isNotEmpty ? message : "keine zusätzliche Nachricht"}\n\n'
        'Mit freundlichen Grüßen\n'
        '$name';

    final emailUrl =
        'mailto:Info@fix-faitr.de,ahmadyassin050196@gmail.com?'
        'subject=${Uri.encodeComponent(subject)}&'
        'body=${Uri.encodeComponent(body)}';

    try {
      final Uri uri = Uri.parse(emailUrl);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(localizations.errorEmail)));
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Fehler: $e')));
    }
  }
}
