import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

class ContactForm extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController messageController;
  final TextEditingController moveInAddressController;
  final TextEditingController moveOutAddressController;
  final TextEditingController roomCountController;
  final TextEditingController inspectionTypeController;

  const ContactForm({
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.messageController,
    required this.moveInAddressController,
    required this.moveOutAddressController,
    required this.roomCountController,
    required this.inspectionTypeController,
  });

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  String? _selectedRoomCount;
  String? _selectedInspectionType;

  @override
  void initState() {
    super.initState();
    _selectedRoomCount = null;
    _selectedInspectionType = null;
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    final List<String> _roomOptions = [
      localizations.rooms1_2,
      localizations.rooms3_4,
      localizations.rooms4_5,
      localizations.rooms5plus,
    ];

    final List<String> _inspectionOptions = [
      localizations.onlineInspection,
      localizations.onSiteInspection,
      localizations.telefonischeBesprechung,
      localizations.videoCall,
      localizations.sonstigeBesichtigung,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localizations.contactDetails,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),

        // Persönliche Daten
        Text(
          localizations.personalData,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue[700],
          ),
        ),
        SizedBox(height: 10),

        TextField(
          controller: widget.nameController,
          decoration: InputDecoration(
            labelText: localizations.name,
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          ),
          selectionControls: materialTextSelectionControls,
          cursorColor: Colors.blue,
          cursorWidth: 2.0,
          cursorRadius: Radius.circular(2.0),
        ),
        SizedBox(height: 10),

        TextField(
          controller: widget.emailController,
          decoration: InputDecoration(
            labelText: localizations.email,
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
          ),
          keyboardType: TextInputType.emailAddress,
          selectionControls: materialTextSelectionControls,
          cursorColor: Colors.blue,
          cursorWidth: 2.0,
          cursorRadius: Radius.circular(2.0),
        ),
        SizedBox(height: 10),

        TextField(
          controller: widget.phoneController,
          decoration: InputDecoration(
            labelText: localizations.phone,
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.phone),
          ),
          keyboardType: TextInputType.phone,
          selectionControls: materialTextSelectionControls,
          cursorColor: Colors.blue,
          cursorWidth: 2.0,
          cursorRadius: Radius.circular(2.0),
        ),

        SizedBox(height: 20),

        // Umzugsdaten
        Text(
          localizations.moveData,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue[700],
          ),
        ),
        SizedBox(height: 10),

        TextField(
          controller: widget.moveInAddressController,
          decoration: InputDecoration(
            labelText: localizations.moveInAddress,
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.home),
            hintText: 'Straße, Hausnummer, PLZ, Ort',
          ),
          selectionControls: materialTextSelectionControls,
          cursorColor: Colors.blue,
          cursorWidth: 2.0,
          cursorRadius: Radius.circular(2.0),
          maxLines: 2,
        ),
        SizedBox(height: 10),

        TextField(
          controller: widget.moveOutAddressController,
          decoration: InputDecoration(
            labelText: localizations.moveOutAddress,
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.location_city),
            hintText: 'Straße, Hausnummer, PLZ, Ort',
          ),
          selectionControls: materialTextSelectionControls,
          cursorColor: Colors.blue,
          cursorWidth: 2.0,
          cursorRadius: Radius.circular(2.0),
          maxLines: 2,
        ),
        SizedBox(height: 10),

        // Zimmeranzahl
        DropdownButtonFormField<String>(
          value: _selectedRoomCount,
          decoration: InputDecoration(
            labelText: localizations.roomCount,
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.meeting_room),
          ),
          items: _roomOptions.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedRoomCount = newValue;
              widget.roomCountController.text = newValue ?? '';
            });
          },
        ),
        SizedBox(height: 10),

        // Besichtigungsart
        DropdownButtonFormField<String>(
          value: _selectedInspectionType,
          decoration: InputDecoration(
            labelText: localizations.inspectionType,
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.visibility),
          ),
          items: _inspectionOptions.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedInspectionType = newValue;
              widget.inspectionTypeController.text = newValue ?? '';
            });
          },
        ),
        SizedBox(height: 20),

        // Nachricht
        Text(
          localizations.additionalInfo,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue[700],
          ),
        ),
        SizedBox(height: 10),

        TextField(
          controller: widget.messageController,
          decoration: InputDecoration(
            labelText: localizations.message,
            border: OutlineInputBorder(),
            alignLabelWithHint: true,
            prefixIcon: Icon(Icons.message),
            hintText: 'Weitere Informationen, spezielle Wünsche oder Fragen...',
          ),
          selectionControls: materialTextSelectionControls,
          cursorColor: Colors.blue,
          cursorWidth: 2.0,
          cursorRadius: Radius.circular(2.0),
          maxLines: 4,
          minLines: 3,
        ),
      ],
    );
  }
}
