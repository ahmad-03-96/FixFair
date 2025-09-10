import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../l10n/app_localizations.dart';
import '../models/service_model.dart';
import '../widgets/contact_form.dart';
import '../widgets/dual_action_button.dart';

class ServiceDetailPage extends StatefulWidget {
  final Service service;

  const ServiceDetailPage({required this.service});

  @override
  _ServiceDetailPageState createState() => _ServiceDetailPageState();
}

class _ServiceDetailPageState extends State<ServiceDetailPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _moveInAddressController =
      TextEditingController();
  final TextEditingController _moveOutAddressController =
      TextEditingController();
  final TextEditingController _roomCountController = TextEditingController();
  final TextEditingController _inspectionTypeController =
      TextEditingController();

  Artboard? _riveArtboard;

  @override
  void initState() {
    super.initState();
    _loadRiveAnimation();
  }

  Future<void> _loadRiveAnimation() async {
    try {
      final bytes = await rootBundle.load(widget.service.imageAsset);
      final file = RiveFile.import(bytes);
      final artboard = file.mainArtboard;

      if (artboard.animations.isNotEmpty) {
        for (final animation in artboard.animations) {
          artboard.addController(SimpleAnimation(animation.name));
        }
      }

      setState(() {
        _riveArtboard = artboard;
      });
    } catch (e) {
      print('Failed to load Rive animation: $e');
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    _moveInAddressController.dispose();
    _moveOutAddressController.dispose();
    _roomCountController.dispose();
    _inspectionTypeController.dispose();
    super.dispose();
  }

  Future<void> _sendWhatsAppRequest() async {
    final localizations = AppLocalizations.of(context);

    if (_nameController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _moveInAddressController.text.isEmpty ||
        _moveOutAddressController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(localizations.errorRequiredFields)),
      );
      return;
    }

    String text =
        "Hallo! Ich interessiere mich für ein Angebot:\n\n"
        "📋 **Service:** ${widget.service.title(context)}\n\n"
        "👤 **Persönliche Daten:**\n"
        "• Name: ${_nameController.text}\n"
        "• E-Mail: ${_emailController.text.isNotEmpty ? _emailController.text : 'nicht angegeben'}\n"
        "• Telefon: ${_phoneController.text}\n\n"
        "🏠 **Umzugsdaten:**\n"
        "• Einzugsadresse: ${_moveInAddressController.text}\n"
        "• Auszugsadresse: ${_moveOutAddressController.text}\n"
        "• Zimmeranzahl: ${_roomCountController.text.isNotEmpty ? _roomCountController.text : 'nicht angegeben'}\n"
        "• Besichtigung: ${_inspectionTypeController.text.isNotEmpty ? _inspectionTypeController.text : 'nicht angegeben'}\n\n"
        "💬 **Weitere Informationen:**\n"
        "${_messageController.text.isNotEmpty ? _messageController.text : 'keine zusätzliche Nachricht'}\n\n"
        "Ich freue mich auf Ihre Rückmeldung!";

    String encodedText = Uri.encodeFull(text);
    String url = "https://wa.me/4917612345678?text=$encodedText";

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

  Future<void> _sendEmailRequest() async {
    final localizations = AppLocalizations.of(context);

    if (_nameController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _moveInAddressController.text.isEmpty ||
        _moveOutAddressController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(localizations.errorRequiredFields)),
      );
      return;
    }

    final subject = 'Anfrage für: ${widget.service.title(context)}';
    final body =
        'Sehr geehrtes Team,\n\n'
        'ich interessiere mich für folgende Dienstleistung:\n'
        'Service: ${widget.service.title(context)}\n\n'
        'Meine Kontaktdaten:\n'
        'Name: ${_nameController.text}\n'
        'Telefon: ${_phoneController.text}\n'
        'E-Mail: ${_emailController.text.isNotEmpty ? _emailController.text : "nicht angegeben"}\n\n'
        'Umzugsdaten:\n'
        'Einzugsadresse: ${_moveInAddressController.text}\n'
        'Auszugsadresse: ${_moveOutAddressController.text}\n'
        'Zimmeranzahl: ${_roomCountController.text.isNotEmpty ? _roomCountController.text : "nicht angegeben"}\n'
        'Besichtigungsart: ${_inspectionTypeController.text.isNotEmpty ? _inspectionTypeController.text : "nicht angegeben"}\n\n'
        'Weitere Informationen:\n'
        '${_messageController.text.isNotEmpty ? _messageController.text : "keine zusätzliche Nachricht"}\n\n'
        'Mit freundlichen Grüßen\n'
        '${_nameController.text}';

    final emailUrl =
        'mailto:Info@fix-fair.de,aymanshehadeh48@gmail.com?'
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

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.service.title(context)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Große Rive Animation
            Container(
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: _riveArtboard != null
                    ? Rive(artboard: _riveArtboard!, fit: BoxFit.contain)
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.animation,
                            size: 50,
                            color: Colors.grey[400],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Animation lädt...',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
            SizedBox(height: 16),

            // Service-Beschreibung
            Text(
              widget.service.title(context),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            Text(
              widget.service.description(context),
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                height: 1.4,
              ),
            ),
            SizedBox(height: 16),

            // Features/Leistungen
            Text(
              localizations.ourServices,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.service
                  .features(context)
                  .map(
                    (feature) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• ',
                            style: TextStyle(fontSize: 14, color: Colors.green),
                          ),
                          Expanded(
                            child: Text(
                              feature,
                              style: TextStyle(fontSize: 14, height: 1.3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 20),

            // Kontaktformular
            Text(
              localizations.contactForOffer,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),

            ContactForm(
              nameController: _nameController,
              emailController: _emailController,
              phoneController: _phoneController,
              messageController: _messageController,
              moveInAddressController: _moveInAddressController,
              moveOutAddressController: _moveOutAddressController,
              roomCountController: _roomCountController,
              inspectionTypeController: _inspectionTypeController,
            ),
            SizedBox(height: 20),

            // Buttons
            DualActionButton(
              onWhatsAppPressed: _sendWhatsAppRequest,
              onEmailPressed: _sendEmailRequest,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
