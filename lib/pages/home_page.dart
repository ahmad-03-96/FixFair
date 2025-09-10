import 'package:fix_fair/pages/trust_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../l10n/app_localizations.dart';
import '../widgets/footer.dart';
import '../widgets/header_section.dart';
import '../widgets/rive_placeholder.dart';
import '../widgets/service_grid.dart';
import 'admin_reviews_page.dart';
import 'customers_detail_page.dart';
import 'service_detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  String _selectedService = 'Privat-Umzüge';
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _formSectionKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
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

  Future<void> _sendWhatsAppRequest(BuildContext context) async {
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
        "📋 **Service:** $_selectedService\n\n"
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

    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(localizations.errorWhatsapp)));
    }
  }

  Future<void> _sendEmailRequest(BuildContext context) async {
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

    final subject = 'Anfrage für: $_selectedService';
    final body =
        'Sehr geehrtes Team,\n\n'
        'ich interessiere mich für folgende Dienstleistung:\n'
        'Service: $_selectedService\n\n'
        'Meine Kontaktdaten:\n'
        'Name: ${_nameController.text}\n'
        'Telefon: ${_phoneController.text}\n'
        'E-Mail: ${_emailController.text}\n\n'
        'Umzugsdaten:\n'
        'Einzugsadresse: ${_moveInAddressController.text}\n'
        'Auszugsadresse: ${_moveOutAddressController.text}\n'
        'Zimmer: ${_roomCountController.text}\n\n'
        'Weitere Informationen:\n'
        '${_messageController.text}\n\n'
        'Mit freundlichen Grüßen\n'
        '${_nameController.text}';

    final emailUrl =
        'mailto:Info@fix-fair.de,aymanshehadeh48@gmail.com?'
        'subject=${Uri.encodeComponent(subject)}&'
        'body=${Uri.encodeComponent(body)}';

    final Uri uri = Uri.parse(emailUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(localizations.errorEmail)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Positioned(
              top: 50, // 50 Pixel vom oben
              right: 20, // 20 Pixel vom rechts
              child: GestureDetector(
                onLongPress: () {
                  print("Admin Button gedrückt!"); // Debug Ausgabe
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdminReviewsPage(),
                    ),
                  );
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.3), // SICHTBAR für Test
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.admin_panel_settings,
                      color: Colors.transparent,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            HeaderSection(),

            // Dienstleistungs-Sektion
            Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              color: theme.cardColor,
              child: Column(
                children: [
                  Text(
                    localizations.servicesTitle,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    localizations.servicesSubtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color:
                          theme.textTheme.bodyLarge?.color?.withOpacity(0.6) ??
                          Colors.grey[600],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  ServiceGrid(
                    onServiceSelected: (service) {
                      // Zur Service-Detailseite navigieren
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceDetailPage(service: service),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Weitere Platzhalter
            Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              color: theme.cardColor,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrustDetailPage()),
                  );
                },
                child: RivePlaceholder(
                  title: localizations.whyTrust,
                  subtitle: localizations.whyTrustSub,
                  animationAsset: 'assets/animations/trust.riv',
                  stateMachineName: 'State Machine 1',
                  height: 350,
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomersDetailPage(),
                    ),
                  );
                },
                child: RivePlaceholder(
                  title: localizations.satisfiedCustomers,
                  subtitle: localizations.satisfiedCustomersSub,
                  animationAsset: 'assets/animations/customers.riv',
                  stateMachineName: 'State Machine 1',
                  height: 350,
                ),
              ),
            ),

            // Footer
            Footer(),
          ],
        ),
      ),
    );
  }
}
