import 'package:fix_fair/pages/trust_detail_page.dart';
import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../widgets/footer.dart';
import '../widgets/header_section.dart';
import '../widgets/rive_placeholder.dart';
import '../widgets/service_grid.dart';
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

  final ScrollController _scrollController = ScrollController();


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

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
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
