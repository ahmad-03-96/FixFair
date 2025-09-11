import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocalizations {
  static final Map<String, Map<String, String>> _localizedValues = {
    'de': {
      'appTitle': 'Fix - Fair',
      'servicesTitle': 'Unsere Dienstleistungen',
      'servicesSubtitle': 'Ihr Partner für Dienstleistungen',
      'requestTitle': 'Kostenlose Anfrage',
      'requestSubtitle': 'Senden Sie uns eine unverbindliche Anfrage',
      'contactDetails': 'Kontaktdaten',
      'name': 'Name *',
      'email': 'E-Mail',
      'phone': 'Telefon *',
      'message': 'Nachricht (optional)',
      'selectService': 'Service auswählen',
      'whatsappButton': 'Jetzt per WhatsApp anfragen',
      'emailButton': 'Per E-Mail anfragen',
      'whyTrust': 'Warum uns Kunden vertrauen',
      'whyTrustSub': 'Professionelle Dienstleistungen zu fairen Preisen',
      'satisfiedCustomers': 'Zufriedene Kunden',
      'satisfiedCustomersSub': 'Überzeugen Sie sich selbst von unserer Arbeit',
      'errorNamePhone': 'Bitte geben Sie mindestens Name und Telefonnummer ein',
      'errorRequiredFields': 'Bitte füllen Sie alle Pflichtfelder aus',
      'errorWhatsapp': 'WhatsApp konnte nicht geöffnet werden',
      'errorEmail': 'E-Mail konnte nicht geöffnet werden',
      'companyName': 'Fix - Fair',
      'address': 'Quellhof Straße 26, 34127 Kassel',
      'contact': 'Kontakt',
      'telephone': 'Tel: +49 176 12345678',
      'emailAddress': 'Email: Info@fix-fair.de',
      'imprint': 'Impressum',
      'privacy': 'Datenschutz',
      'terms': 'AGB',
      'copyright': '© 2024 Fix - Fair. Alle Rechte vorbehalten.',

      'privateMoves': 'Privat-Umzüge',
      'officeMoves': 'Büro-Umzüge',
      'seniorMoves': 'Senioren-Umzüge',
      'kitchenAssembly': 'Küchenmontagen',
      'assemblies': 'Möbelmontagen',
      'householdLiquidation': 'Haushaltsauflösung',
      'somethingelse': 'Sonstiges',

      'privateMovesDesc': 'Stressfreie Umzüge für Privathaushalte',
      'officeMovesDesc': 'Umzüge für Unternehmen und Büros',
      'seniorMovesDesc': 'Umzüge mit besonderer Rücksichtnahme',
      'kitchenAssemblyDesc': 'Professionelle Montage Ihrer neuen Küche',
      'assembliesDesc': 'Montage von Möbeln aller Art',
      'householdLiquidationDesc': 'Haushaltsauflösungen aller Art',

      // NEUE SERVICES
      'umzugsservice': 'Umzugsservice',
      'entruempelung': 'Entrümpelung',
      'trockenbau': 'Trockenbau',
      'abbruch': 'Abbruch',
      'gebaeudereinigung': 'Gebäudereinigung',
      'bodenleger': 'Bodenleger',
      'streichen': 'Streichen',
      'tapezieren': 'Tapezieren',
      'renovierung': 'Renovierung',
      'gartenarbeit': 'Gartenarbeit',
      'hausmeisterservice': 'Hausmeisterservice',

      'umzugsserviceDesc': 'Kompletter Umzugsservice für Privat und Business',
      'entruempelungDesc': 'Professionelle Entrümpelung und Entsorgung',
      'trockenbauDesc': 'Trockenbauarbeiten aller Art',
      'abbruchDesc': 'Abbruch- und Rückbauarbeiten',
      'gebaeudereinigungDesc': 'Umfassende Gebäudereinigung',
      'bodenlegerDesc': 'Verlegung aller Bodenbeläge',
      'streichenDesc': 'Malerarbeiten und Lackierungen',
      'tapezierenDesc': 'Tapezierarbeiten und Wandgestaltung',
      'renovierungDesc': 'Komplette Renovierungsarbeiten',
      'gartenarbeitDesc': 'Gartenpflege und Landschaftsbau',
      'hausmeisterserviceDesc': 'Umfassender Hausmeisterservice',

      'moveInAddress': 'Einzugsadresse *',
      'moveOutAddress': 'Auszugsadresse *',
      'roomCount': 'Zimmeranzahl *',
      'inspectionType': 'Besichtigungsart *',
      'personalData': 'Persönliche Daten',
      'moveData': 'Umzugsdaten',
      'additionalInfo': 'Weitere Informationen',

      'settings': 'Einstellungen',
      'darkMode': 'Dunkelmodus',
      'language': 'Sprache',
      'settingsSaved': 'Einstellungen werden automatisch gespeichert',
      'darkModeEnabled': 'Dark Mode aktiviert',
      'darkModeDisabled': 'Light Mode aktiviert',
      'languageChanged': 'Sprache geändert',

      'onlineInspection': 'Online Besichtigung',
      'onSiteInspection': 'Vor-Ort Besichtigung',
      'telefonischeBesprechung': 'Telefonische Besprechung',
      'videoCall': 'Video-Call',
      'sonstigeBesichtigung': 'Sonstiges',

      'rooms1-2': '1-2 Zimmer',
      'rooms3-4': '3-4 Zimmer',
      'rooms4-5': '4-5 Zimmer',
      'rooms5plus': 'Mehr als 5 Zimmer',

      'ourServices': 'Unsere Leistungen',
      'contactForOffer': 'Kontaktieren Sie uns für ein Angebot',

      // NEUE ÜBERSETZUNGEN FÜR SEITEN
      'agbTitle': 'Allgemeine Geschäftsbedingungen',
      'datenschutzTitle': 'Datenschutzerklärung',
      'impressumTitle': 'Impressum',
      'addReviewTitle': 'Bewertung schreiben',
      'trustDetailsTitle': 'Warum uns Kunden vertrauen',
      'adminReviewsTitle': 'Bewertungen verwalten',

      // AGB Page
      'agbSection1': '§ 1 Geltungsbereich',
      'agbContent1':
          '1. Diese Allgemeinen Geschäftsbedingungen gelten für alle Verträge, die zwischen der Fix - Fair GmbH und dem Kunden geschlossen werden.',
      'agbSection2': '§ 2 Vertragsschluss',
      'agbContent2':
          '1. Die Darstellung der Leistungen im Internet stellt kein rechtlich bindendes Angebot, sondern nur eine Aufforderung zur Abgabe eines Angebots dar.',
      'agbSection3': '§ 3 Preise und Zahlungsbedingungen',
      'agbContent3':
          '1. Alle Preise verstehen sich in Euro und enthalten die gesetzliche Umsatzsteuer.',
      'agbSection4': '§ 4 Leistungsumfang und Durchführung',
      'agbContent4':
          '1. Der Umfang der zu erbringenden Leistungen ergibt sich aus der Leistungsbeschreibung im Angebot.',
      'agbSection5': '§ 5 Widerrufsrecht',
      'agbContent5': '1. Verbraucher haben ein vierzehntägiges Widerrufsrecht.',
      'agbSection6': '§ 6 Haftung',
      'agbContent6':
          '1. Die Haftung für leichte Fahrlässigkeit ist ausgeschlossen, sofern keine wesentlichen Vertragspflichten verletzt werden.',
      'agbSection7': '§ 7 Schlussbestimmungen',
      'agbContent7':
          '1. Es gilt das Recht der Bundesrepublik Deutschland.\n2. Erfüllungsort ist Kassel.\n3. Gerichtsstand ist Kassel.',

      // Datenschutz Page
      'privacySection1': '1. Datenschutz auf einen Blick',
      'privacyContent1':
          'Allgemeine Hinweise\nDie folgenden Hinweise geben einen einfachen Überblick darüber, was mit Ihren personenbezogenen Daten passiert, wenn Sie unsere Website besuchen. Personenbezogene Daten sind alle Daten, mit denen Sie persönlich identifiziert werden können.',
      'privacySection2': '2. Allgemeine Hinweise und Pflichtinformationen',
      'privacyContent2':
          'Datenschutz\nDie Betreiber dieser Seiten nehmen den Schutz Ihrer persönlichen Daten sehr ernst. Wir behandeln Ihre personenbezogenen Daten vertraulich und entsprechend der gesetzlichen Datenschutzvorschriften sowie dieser Datenschutzerklärung.',
      'privacySection3': '3. Datenerfassung auf unserer Website',
      'privacyContent3':
          'Cookies\nDie Internetseiten verwenden teilweise so genannte Cookies. Cookies richten auf Ihrem Rechner keinen Schaden an und enthalten keine Viren. Cookies dienen dazu, unser Angebot nutzerfreundlicher, effektiver und sicherer zu machen.',
      'privacySection4': '4. Analyse-Tools und Tools von Drittanbietern',
      'privacyContent4':
          'Beim Besuch unserer Website kann Ihr Surf-Verhalten statistisch ausgewertet werden. Das geschieht vor allem mit Cookies und mit sogenannten Analyseprogrammen. Die Analyse Ihres Surf-Verhaltens erfolgt in der Regel anonym; das Surf-Verhalten kann nicht zu Ihnen zurückverfolgt werden.',
      'privacySection5': '5. Verantwortliche Stelle',
      'privacyContent5':
          'Die verantwortliche Stelle für die Datenverarbeitung auf dieser Website ist:\nFix - Fair\nQuellhof Straße 26\n34127 Kassel\nTelefon: +49 176 12345678\nE-Mail: Info@fix-fair.de',
      'privacySection6': '6. Widerruf Ihrer Einwilligung zur Datenverarbeitung',
      'privacyContent6':
          'Viele Datenverarbeitungsvorgänge sind nur mit Ihre ausdrücklichen Einwilligung möglich. Sie können eine bereits erteilte Einwilligung jederzeit widerrufen. Dazu reicht eine formlose Mitteilung per E-Mail an uns.',

      // Impressum Page
      'imprintSection1': 'Angaben gemäß § 5 TMG:',
      'imprintContent1': 'Fix - Fair\nQuellhof Straße 26\n34127 Kassel',
      'imprintSection2': 'Inhaber:',
      'imprintContent2':
          'Shehadeh Ayman\nGeboren am: 10.01.1996\nGeburtsort: Muadamia, Syrien',
      'imprintSection3': 'Kontakt:',
      'imprintContent3':
          'Telefon: +49 176 12345678\nE-Mail: Info@fix-fair.de\nE-Mail: aymanshehadeh48@gmail.com\nWeb: www.fix-fair.de',
      'imprintSection4': 'Entwicklung:',
      'imprintContent4': 'App entwickelt von Shehadeh Ayman',
      'imprintSection5': 'Umsatzsteuer-ID:',
      'imprintContent5':
          'Umsatzsteuer-Identifikationsnummer gemäß §27a Umsatzsteuergesetz: DE123456789',
      'imprintSection6': 'Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV:',
      'imprintContent6': 'Shehadeh Ayman\nQuellhof Straße 26\n34127 Kassel',

      // Trust Details Page
      'trustPoint1Title': 'Zertifizierte Qualität',
      'trustPoint1Desc':
          'Alle unsere Dienstleistungen werden von zertifizierten Fachkräften durchgeführt und unterliegen strengen Qualitätskontrollen.',
      'trustPoint2Title': 'Faire Preise',
      'trustPoint2Desc':
          'Transparente Preisgestaltung ohne versteckte Kosten. Sie wissen immer genau, was Sie bezahlen.',
      'trustPoint3Title': 'Erfahrung',
      'trustPoint3Desc':
          'Über 10 Jahre Erfahrung in der Branche mit tausenden zufriedenen Kunden.',
      'trustPoint4Title': 'Versicherung',
      'trustPoint4Desc':
          'Volle Versicherung aller Leistungen für maximale Sicherheit und Schutz Ihres Eigentums.',
      'trustPoint5Title': '24/7 Support',
      'trustPoint5Desc':
          'Rund um die Uhr erreichbarer Kundenservice für alle Ihre Fragen und Anliegen.',
      'trustReadyTitle': 'Bereit für Ihren Umzug?',
      'trustReadySubtitle':
          'Kontaktieren Sie uns noch heute für ein unverbindliches Angebot!',
      'trustRequestButton': 'Jetzt Angebot anfordern',

      // NEUE ÜBERSETZUNGEN FÜR CUSTOMERS DETAIL PAGE
      'googleReviews': 'Google Bewertungen',
      'rateUsGoogle': 'Bewerten Sie uns auf Google',
      'rateDescription': 'Helfen Sie anderen Kunden bei ihrer Entscheidung',
      'rateNowButton': 'Jetzt bewerten auf Google',
      'supportEmail': 'E-Mail für Support: support@fix-fair.de',
      'reviewPrompt': 'Teilen Sie Ihre Erfahrungen mit uns',
      'customerTestimonials': 'Kundenbewertungen',
      'satisfiedClients': 'Zufriedene Kunden in Kassel',

      // NEUE ÜBERSETZUNGEN FÜR IMPRESSUM
      'representedBy': 'Vertreten durch:',
      'vatId': 'Umsatzsteuer-ID:',
      'vatInfo':
          'Umsatzsteuer-Identifikationsnummer gemäß §27a Umsatzsteuergesetz:',
      'disputeResolution': 'Streitschlichtung:',
      'disputeContent':
          'Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit',
      'disputeNotParticipate':
          'Wir sind nicht bereit oder verpflichtet, an Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle teilzunehmen.',
      'liabilityContent':
          'Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich.',
      'copyrightInfo':
          'Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht.',
      'imageSources': 'Bild- und Iconquellen:',
      'animationTools': 'Animationen erstellt mit Rive',
      'svgSources': 'SVG-Icons von:',
      'graphicLicense':
          'Alle verwendeten Grafiken und Icons stehen unter freien Lizenzen zur Verfügung oder wurden eigenständig erstellt.',
      'freepik': 'Freepik',
      'svgRepo': 'SVG Repo',
      'legalInfo': 'Rechtliche Informationen',
      'companyInfo': 'Firmeninformationen',

      // NEUE ÜBERSETZUNGEN FÜR DATENSCHUTZ
      'privacyOverview': 'Datenschutz auf einen Blick',
      'dataCollection': 'Datenerfassung auf dieser Website',
      'howWeCollect': 'Wie erfassen wir Ihre Daten?',
      'dataUsage': 'Wofür nutzen wir Ihre Daten?',
      'yourRights': 'Welche Rechte haben Sie bezüglich Ihrer Daten?',
      'analyticsTools': 'Analyse-Tools und Tools von Drittanbietern',
      'hostingProvider': 'Hosting',
      'generalInfo': 'Allgemeine Hinweise und Pflichtinformationen',
      'responsibleParty': 'Hinweis zur verantwortlichen Stelle',
      'storageDuration': 'Speicherdauer',
      'revokeConsent': 'Widerruf Ihrer Einwilligung zur Datenverarbeitung',
      'objectionRight': 'Widerspruchsrecht gegen die Datenerhebung',
      'complaintRight': 'Beschwerderecht bei der zuständigen Aufsichtsbehörde',
      'dataPortability': 'Recht auf Datenübertragbarkeit',
      'sslEncryption': 'SSL- bzw. TLS-Verschlüsselung',
      'paymentEncryption': 'Verschlüsselter Zahlungsverkehr auf dieser Website',
      'dataSecurity': 'Datensicherheit',
      'privacyPolicy': 'Datenschutzerklärung',

      // Service Model
      'professionalEquipment': 'Professionelles Equipment',
      'insuredTransport': 'Versicherter Transport',
      'assemblyDisassembly': 'Montage/Demontage von Möbeln',
      'packagingIncluded': 'Verpackungsmaterial inklusive',
      'environmentalDisposal': 'Umweltgerechte Entsorgung',
      'recyclingPossible': 'Recycling wo möglich',
      'bulkyWasteRemoval': 'Sperrmüllabtransport',
      'cleaningIncluded': 'Reinigung inklusive',
      'ceilingLinings': 'Deckenverkleidungen',
      'soundproofingSolutions': 'Schallschutz-Lösungen',
      'fireProtectionMeasures': 'Brandschutz-Maßnahmen',
      'electricalPreparation': 'Elektroinstallation vorbereitet',
      'bathroomDismantling': 'Badezimmer-Rückbau',
      'kitchenDismantling': 'Küchen-Demontage',
      'hazardousRemediation': 'Schadstoffsanierung',
      'materialDisposal': 'Entsorgung aller Materialien',
      'windowCleaning': 'Fensterreinigung',
      'carpetCleaning': 'Teppichreinigung',
      'maintenanceCleaning': 'Unterhaltsreinigung',
      'specialCleaning': 'Spezialreinigungen',
      'parquetLayingSanding': 'Parkett verlegen & abschleifen',
      'vinylFlooringLaying': 'Vinyl-Böden verlegen',
      'carpetLaying': 'Teppichböden verlegen',
      'tileLaying': 'Fliesen verlegen',
      'wallpaperPreparation': 'Tapezierarbeiten vorbereiten',
      'doorWindowPainting': 'Lackieren von Türen & Fenstern',
      'radiatorPainting': 'Heizkörper lackieren',
      'facadeWork': 'Fassadenarbeiten',
      'nonWovenWallpapers': 'Vliestapeten verlegen',
      'designerWallpapers': 'Designertapeten',
      'patternWallpapers': 'Mustertapeten fachgerecht',
      'specialWallpapers': 'Spezialtapeten (Struktur, etc.)',
      'lawnMowingCare': 'Rasen mähen & pflegen',
      'hedgeTrimming': 'Hecken schneiden',
      'plantingWork': 'Pflanzarbeiten',
      'pathsTerraces': 'Wege & Terrassen anlegen',
      'smallRepairs': 'kleine Reparaturen',
      'winterService': 'Winterdienst',
      'greenSpaceCare': 'Grünflächenpflege',
      'emergencyService': 'Notdienst verfügbar',
      'electricalConnections': 'Elektroanschlüsse',
      'waterConnections': 'Wasseranschlüsse',
      'countertopCutting': 'Arbeitsplatten zuschneiden',
      'applianceInstallation': 'Einbau von Geräten',
      'builtinCabinets': 'Einbauschränke montieren',
      'shelvesCabinets': 'Regale und Schränke aufbauen',
      'bedsMattresses': 'Betten und Matratzen montieren',
      'gardenFurniture': 'Gartenmöbel aufbauen',
      'sortingItems': 'Sortierung der Gegenstände',
      'usableItems': 'Verwertung brauchbarer Items',
      'disposalUnusable': 'Entsorgung nicht brauchbarer Items',
      'premisesCleaning': 'Reinigung der Räumlichkeiten',
      'customSolutions': 'Maßgeschneiderte Lösungen',
      'flexibleScheduling': 'Flexible Terminvereinbarung',
      'individualOffers': 'Individuelle Angebote',
      'specialOrders': 'Spezialaufträge möglich',
      'onSiteConsultation': 'Beratung vor Ort',

      // SEO KEYWORDS FÜR UMZUG KASSEL
      'seoUmzugKassel': 'Umzug Kassel - Professioneller Umzugsservice',
      'seoUmzugsunternehmen': 'Umzugsunternehmen Kassel - Fix - Fair',
      'seoMoebeltransport': 'Möbeltransport Kassel - Günstig und Zuverlässig',
      'seoEntruempelung': 'Entrümpelung Kassel - Schnell und Preiswert',
      'seoHaushaltsaufloesung': 'Haushaltsauflösung Kassel - Komplettservice',
      'seoMoebelmontage': 'Möbelmontage Kassel - Fachgerechter Aufbau',
      'seoKuechenmontage': 'Küchenmontage Kassel - Professionelle Montage',
      'seoBueroUmzug': 'Büroumzug Kassel - Business Umzugsservice',
      'seoSeniorenUmzug': 'Seniorenumzug Kassel - Behutsamer Service',
      'seoMoebelpacker': 'Möbelpacker Kassel - Erfahrene Umzugshelfer',
      'seoGuenstigUmzug': 'Günstiger Umzug Kassel - Beste Preise',
      'seoProfessionellUmzug': 'Professioneller Umzugsservice Nordhessen',
      'seoUmzugMontage': 'Umzug mit Montage - Komplettpaket',
      'seoEntsorgung': 'Entsorgung Kassel - Umweltgerechte Entsorgung',
      'seoRaeumung': 'Räumung Kassel - Vollständige Räumungen',
      'seoNordhessen': 'Umzug Nordhessen \n Regionale Umzugsservices',
      'seoUmzugsdienst': 'Umzugsdienst Hessen - Bundesweite Services',
      'seoMoebeltaxi': 'Möbeltaxi Kassel - Kleintransporte',
      'seoTransporter': 'Transporter mieten Kassel - Transportlösungen',
      'seoQualityService': 'Qualitätsumzug Kassel - Fix - Fair Service',
      'seoReliableMoving': 'Zuverlässiger Umzugsservice Kassel',
    },
    'en': {
      'appTitle': 'Fix - Fair',
      'servicesTitle': 'Our Services',
      'servicesSubtitle': 'Your partner for services',
      'requestTitle': 'Free Quote Request',
      'requestSubtitle': 'Send us a non-binding inquiry',
      'contactDetails': 'Contact Details',
      'name': 'Name *',
      'email': 'Email',
      'phone': 'Phone *',
      'message': 'Message (optional)',
      'selectService': 'Select Service',
      'whatsappButton': 'Request via WhatsApp now',
      'emailButton': 'Request via Email',
      'whyTrust': 'Why Customers Trust Us',
      'whyTrustSub': 'Professional services at fair prices',
      'satisfiedCustomers': 'Satisfied Customers',
      'satisfiedCustomersSub': 'See our work for yourself',
      'errorNamePhone': 'Please enter at least name and phone number',
      'errorRequiredFields': 'Please fill in all required fields',
      'errorWhatsapp': 'Could not open WhatsApp',
      'errorEmail': 'Could not open email',
      'companyName': 'Fix - Fair',
      'address': 'Quellhof Street 26, 34127 Kassel',
      'contact': 'Contact',
      'telephone': 'Tel: +49 176 12345678',
      'emailAddress': 'Email: Info@fix-fair.de',
      'imprint': 'Imprint',
      'privacy': 'Privacy',
      'terms': 'Terms & Conditions',
      'copyright': '© 2024 Fix - Fair. All rights reserved.',

      'privateMoves': 'Private Moves',
      'officeMoves': 'Office Moves',
      'seniorMoves': 'Senior Moves',
      'kitchenAssembly': 'Kitchen Assembly',
      'assemblies': 'Furniture Assembly',
      'householdLiquidation': 'Household Liquidation',
      'somethingelse': 'Other',

      'privateMovesDesc': 'Stress-free moves for private households',
      'officeMovesDesc': 'Moves for companies and offices',
      'seniorMovesDesc': 'Moves with special consideration',
      'kitchenAssemblyDesc': 'Professional assembly of your new kitchen',
      'assembliesDesc': 'Assembly of all types of furniture',
      'householdLiquidationDesc': 'All types of household liquidations',

      // NEW SERVICES
      'umzugsservice': 'Moving Service',
      'entruempelung': 'Clearance',
      'trockenbau': 'Drywall Installation',
      'abbruch': 'Demolition',
      'gebaeudereinigung': 'Building Cleaning',
      'bodenleger': 'Flooring Installer',
      'streichen': 'Painting',
      'tapezieren': 'Wallpapering',
      'renovierung': 'Renovation',
      'gartenarbeit': 'Gardening',
      'hausmeisterservice': 'Caretaker Service',

      'umzugsserviceDesc': 'Complete moving service for private and business',
      'entruempelungDesc': 'Professional clearance and disposal',
      'trockenbauDesc': 'All types of drywall work',
      'abbruchDesc': 'Demolition and dismantling work',
      'gebaeudereinigungDesc': 'Comprehensive building cleaning',
      'bodenlegerDesc': 'Installation of all floor coverings',
      'streichenDesc': 'Painting and varnishing work',
      'tapezierenDesc': 'Wallpapering and wall design',
      'renovierungDesc': 'Complete renovation work',
      'gartenarbeitDesc': 'Garden care and landscaping',
      'hausmeisterserviceDesc': 'Comprehensive caretaker service',

      'moveInAddress': 'Move-in Address *',
      'moveOutAddress': 'Move-out Address *',
      'roomCount': 'Number of Rooms *',
      'inspectionType': 'Inspection Type *',
      'personalData': 'Personal Data',
      'moveData': 'Move Data',
      'additionalInfo': 'Additional Information',

      'settings': 'Settings',
      'darkMode': 'Dark Mode',
      'language': 'Language',
      'settingsSaved': 'Settings are saved automatically',
      'darkModeEnabled': 'Dark mode enabled',
      'darkModeDisabled': 'Light mode enabled',
      'languageChanged': 'Language changed',

      'onlineInspection': 'Online Inspection',
      'onSiteInspection': 'On-site Inspection',
      'telefonischeBesprechung': 'Telephone Consultation',
      'videoCall': 'Video Call',
      'sonstigeBesichtigung': 'Other',

      'rooms1-2': '1-2 Rooms',
      'rooms3-4': '3-4 Rooms',
      'rooms4-5': '4-5 Rooms',
      'rooms5plus': 'More than 5 Rooms',

      'ourServices': 'Our Services',
      'contactForOffer': 'Contact us for an offer',

      // NEW TRANSLATIONS FOR PAGES
      'agbTitle': 'Terms and Conditions',
      'datenschutzTitle': 'Privacy Policy',
      'impressumTitle': 'Imprint',
      'addReviewTitle': 'Write Review',
      'trustDetailsTitle': 'Why Customers Trust Us',
      'adminReviewsTitle': 'Manage Reviews',

      // AGB Page - English
      'agbSection1': '§ 1 Scope',
      'agbContent1':
          '1. These General Terms and Conditions apply to all contracts concluded between Fix - Fair GmbH and the customer.',
      'agbSection2': '§ 2 Conclusion of Contract',
      'agbContent2':
          '1. The presentation of services on the internet does not constitute a legally binding offer, but only an invitation to submit an offer.',
      'agbSection3': '§ 3 Prices and Payment Terms',
      'agbContent3':
          '1. All prices are in Euro and include statutory value added tax.',
      'agbSection4': '§ 4 Scope of Services and Performance',
      'agbContent4':
          '1. The scope of services to be provided results from the service description in the offer.',
      'agbSection5': '§ 5 Right of Withdrawal',
      'agbContent5': '1. Consumers have a fourteen-day right of withdrawal.',
      'agbSection6': '§ 6 Liability',
      'agbContent6':
          '1. Liability for slight negligence is excluded, unless essential contractual obligations are violated.',
      'agbSection7': '§ 7 Final Provisions',
      'agbContent7':
          '1. The law of the Federal Republic of Germany applies.\n2. Place of performance is Kassel.\n3. Place of jurisdiction is Kassel.',

      // Datenschutz Page - English
      'privacySection1': '1. Data Protection at a Glance',
      'privacyContent1':
          'General Information\nThe following information provides a simple overview of what happens to your personal data when you visit our website. Personal data is any data with which you can be personally identified.',
      'privacySection2': '2. General Information and Mandatory Information',
      'privacyContent2':
          'Data Protection\nThe operators of these pages take the protection of your personal data very seriously. We treat your personal data confidentially and in accordance with the statutory data protection regulations and this data protection declaration.',
      'privacySection3': '3. Data Collection on our Website',
      'privacyContent3':
          'Cookies\nThe websites partly use so-called cookies. Cookies do not cause any damage to your computer and do not contain viruses. Cookies serve to make our offer more user-friendly, effective and secure.',
      'privacySection4': '4. Analysis Tools and Third-Party Tools',
      'privacyContent4':
          'When visiting our website, your surfing behavior may be statistically evaluated. This is done primarily with cookies and so-called analysis programs. The analysis of your surfing behavior is usually anonymous; the surfing behavior cannot be traced back to you.',
      'privacySection5': '5. Responsible Body',
      'privacyContent5':
          'The body responsible for data processing on this website is:\nFix - Fair\nQuellhof Street 26\n34127 Kassel\nPhone: +49 176 12345678\nEmail: Info@fix-fair.de',
      'privacySection6': '6. Revocation of Your Consent to Data Processing',
      'privacyContent6':
          'Many data processing operations are only possible with your express consent. You can revoke consent that you have already given at any time. An informal communication by email to us is sufficient for this.',

      // Impressum Page - English
      'imprintSection1': 'Information according to § 5 TMG:',
      'imprintContent1': 'Fix - Fair\nQuellhof Street 26\n34127 Kassel',
      'imprintSection2': 'Owner:',
      'imprintContent2':
          'Shehadeh Ayman\nBorn on: 01/10/1996\nPlace of birth: Muadamia, Syria',
      'imprintSection3': 'Contact:',
      'imprintContent3':
          'Phone: +49 176 12345678\nEmail: Info@fix-fair.de\nEmail: aymanshehadeh48@gmail.com\nWeb: www.fix-fair.de',
      'imprintSection4': 'Development:',
      'imprintContent4': 'App developed by Shehadeh Ayman',
      'imprintSection5': 'VAT ID:',
      'imprintContent5':
          'Value added tax identification number according to §27a Value Added Tax Act: DE123456789',
      'imprintSection6':
          'Responsible for content according to § 55 Abs. 2 RStV:',
      'imprintContent6': 'Shehadeh Ayman\nQuellhof Street 26\n34127 Kassel',

      // Trust Details Page - English
      'trustPoint1Title': 'Certified Quality',
      'trustPoint1Desc':
          'All our services are performed by certified professionals and subject to strict quality controls.',
      'trustPoint2Title': 'Fair Prices',
      'trustPoint2Desc':
          'Transparent pricing without hidden costs. You always know exactly what you are paying for.',
      'trustPoint3Title': 'Experience',
      'trustPoint3Desc':
          'Over 10 years of experience in the industry with thousands of satisfied customers.',
      'trustPoint4Title': 'Insurance',
      'trustPoint4Desc':
          'Full insurance of all services for maximum security and protection of your property.',
      'trustPoint5Title': '24/7 Support',
      'trustPoint5Desc':
          'Round-the-clock customer service for all your questions and concerns.',
      'trustReadyTitle': 'Ready for your move?',
      'trustReadySubtitle': 'Contact us today for a non-binding offer!',
      'trustRequestButton': 'Request Quote Now',

      // NEW TRANSLATIONS FOR CUSTOMERS DETAIL PAGE
      'googleReviews': 'Google Reviews',
      'rateUsGoogle': 'Rate us on Google',
      'rateDescription': 'Help other customers with their decision',
      'rateNowButton': 'Rate now on Google',
      'supportEmail': 'Support email: support@fix-fair.de',
      'reviewPrompt': 'Share your experiences with us',
      'customerTestimonials': 'Customer Testimonials',
      'satisfiedClients': 'Satisfied Clients in Kassel',

      // NEW TRANSLATIONS FOR IMPRINT
      'representedBy': 'Represented by:',
      'vatId': 'VAT ID:',
      'vatInfo':
          'Value added tax identification number according to §27a Value Added Tax Act:',
      'disputeResolution': 'Dispute Resolution:',
      'disputeContent':
          'The European Commission provides a platform for online dispute resolution (OS)',
      'disputeNotParticipate':
          'We are not willing or obliged to participate in dispute resolution proceedings before a consumer arbitration board.',
      'liabilityContent':
          'As a service provider, we are responsible for our own content on these pages in accordance with general laws pursuant to Section 7 (1) of the German Telemedia Act (TMG).',
      'copyrightInfo':
          'The contents and works created by the site operators on these pages are subject to German copyright law.',
      'imageSources': 'Image and Icon Sources:',
      'animationTools': 'Animations created with Rive',
      'svgSources': 'SVG Icons from:',
      'graphicLicense':
          'All graphics and icons used are available under free licenses or were created independently.',
      'freepik': 'Freepik',
      'svgRepo': 'SVG Repo',
      'legalInfo': 'Legal Information',
      'companyInfo': 'Company Information',

      // NEW TRANSLATIONS FOR PRIVACY
      'privacyOverview': 'Data Protection at a Glance',
      'dataCollection': 'Data Collection on this Website',
      'howWeCollect': 'How do we collect your data?',
      'dataUsage': 'What do we use your data for?',
      'yourRights': 'What rights do you have regarding your data?',
      'analyticsTools': 'Analytics Tools and Third-Party Tools',
      'hostingProvider': 'Hosting',
      'generalInfo': 'General Information and Mandatory Information',
      'responsibleParty': 'Note on the Responsible Party',
      'storageDuration': 'Storage Duration',
      'revokeConsent': 'Revocation of Your Consent to Data Processing',
      'objectionRight': 'Right to Object to Data Collection in Special Cases',
      'complaintRight':
          'Right to Lodge a Complaint with the Competent Supervisory Authority',
      'dataPortability': 'Right to Data Portability',
      'sslEncryption': 'SSL or TLS Encryption',
      'paymentEncryption': 'Encrypted Payment Transactions on this Website',
      'dataSecurity': 'Data Security',
      'privacyPolicy': 'Privacy Policy',

      //Service Model
      'professionalEquipment': 'Professional equipment',
      'insuredTransport': 'Insured transport',
      'assemblyDisassembly': 'Assembly/disassembly of furniture',
      'packagingIncluded': 'Packaging material included',
      'environmentalDisposal': 'Environmentally friendly disposal',
      'recyclingPossible': 'Recycling where possible',
      'bulkyWasteRemoval': 'Bulky waste removal',
      'cleaningIncluded': 'Cleaning included',
      'ceilingLinings': 'Ceiling linings',
      'soundproofingSolutions': 'Soundproofing solutions',
      'fireProtectionMeasures': 'Fire protection measures',
      'electricalPreparation': 'Electrical preparation',
      'bathroomDismantling': 'Bathroom dismantling',
      'kitchenDismantling': 'Kitchen dismantling',
      'hazardousRemediation': 'Hazardous material remediation',
      'materialDisposal': 'Disposal of all materials',
      'windowCleaning': 'Window cleaning',
      'carpetCleaning': 'Carpet cleaning',
      'maintenanceCleaning': 'Maintenance cleaning',
      'specialCleaning': 'Special cleaning',
      'parquetLayingSanding': 'Parquet laying & sanding',
      'vinylFlooringLaying': 'Vinyl flooring laying',
      'carpetLaying': 'Carpet laying',
      'tileLaying': 'Tile laying',
      'wallpaperPreparation': 'Wallpaper preparation',
      'doorWindowPainting': 'Painting doors & windows',
      'radiatorPainting': 'Radiator painting',
      'facadeWork': 'Facade work',
      'nonWovenWallpapers': 'Non-woven wallpapers',
      'designerWallpapers': 'Designer wallpapers',
      'patternWallpapers': 'Pattern wallpapers professionally',
      'specialWallpapers': 'Special wallpapers (texture, etc.)',
      'lawnMowingCare': 'Lawn mowing & care',
      'hedgeTrimming': 'Hedge trimming',
      'plantingWork': 'Planting work',
      'pathsTerraces': 'Paths & terraces construction',
      'smallRepairs': 'Small repairs',
      'winterService': 'Winter service',
      'greenSpaceCare': 'Green space care',
      'emergencyService': 'Emergency service available',
      'electricalConnections': 'Electrical connections',
      'waterConnections': 'Water connections',
      'countertopCutting': 'Countertop cutting',
      'applianceInstallation': 'Appliance installation',
      'builtinCabinets': 'Built-in cabinets mounting',
      'shelvesCabinets': 'Shelves and cabinets assembly',
      'bedsMattresses': 'Beds and mattresses assembly',
      'gardenFurniture': 'Garden furniture assembly',
      'sortingItems': 'Sorting of items',
      'usableItems': 'Utilization of usable items',
      'disposalUnusable': 'Disposal of unusable items',
      'premisesCleaning': 'Premises cleaning',
      'customSolutions': 'Custom solutions',
      'flexibleScheduling': 'Flexible scheduling',
      'individualOffers': 'Individual offers',
      'specialOrders': 'Special orders possible',
      'onSiteConsultation': 'On-site consultation',

      // SEO KEYWORDS FOR MOVING KASSEL
      'seoUmzugKassel': 'Moving Kassel - Professional Moving Service',
      'seoUmzugsunternehmen': 'Moving Company Kassel - Fix - Fair',
      'seoMoebeltransport': 'Furniture Transport Kassel - Cheap and Reliable',
      'seoEntruempelung': 'Clearance Kassel - Fast and Affordable',
      'seoHaushaltsaufloesung':
          'Household Liquidation Kassel - Complete Service',
      'seoMoebelmontage': 'Furniture Assembly Kassel - Professional Assembly',
      'seoKuechenmontage':
          'Kitchen Assembly Kassel - Professional Installation',
      'seoBueroUmzug': 'Office Move Kassel - Business Moving Service',
      'seoSeniorenUmzug': 'Senior Move Kassel - Careful Service',
      'seoMoebelpacker': 'Furniture Movers Kassel - Experienced Moving Helpers',
      'seoGuenstigUmzug': 'Cheap Move Kassel - Best Prices',
      'seoProfessionellUmzug': 'Professional Moving Service Northern Hesse',
      'seoUmzugMontage': 'Moving with Assembly - Complete Package',
      'seoEntsorgung': 'Disposal Kassel - Environmentally Friendly Disposal',
      'seoRaeumung': 'Clearance Kassel - Complete Clearances',
      'seoNordhessen': 'Moving Northern Hesse \n Regional Moving Services',
      'seoUmzugsdienst': 'Moving Service Hesse - Nationwide Services',
      'seoMoebeltaxi': 'Furniture Taxi Kassel - Small Transports',
      'seoTransporter': 'Rent Transporter Kassel - Transport Solutions',
      'seoQualityService': 'Quality Move Kassel - Fix - Fair Service',
      'seoReliableMoving': 'Reliable Moving Service Kassel',
    },
    'ar': {
      'appTitle': 'فيكس آند فير',
      'servicesTitle': 'خدماتنا',
      'servicesSubtitle': 'شريكك في الخدمات',
      'requestTitle': 'طلب عرض سعر مجاني',
      'requestSubtitle': 'أرسل لنا استفسارًا غير ملزم',
      'contactDetails': 'بيانات الاتصال',
      'name': 'الاسم *',
      'email': 'البريد الإلكتروني',
      'phone': 'الهاتف *',
      'message': 'الرسالة (اختياري)',
      'selectService': 'اختر الخدمة',
      'whatsappButton': 'اطلب عبر واتساب الآن',
      'emailButton': 'اطلب عبر البريد الإلكتروني',
      'whyTrust': 'لماذا يثق بنا العملاء',
      'whyTrustSub': 'خدمات احترافية بأسعار عادلة',
      'satisfiedCustomers': 'عملاء راضون',
      'satisfiedCustomersSub': 'اطلع على عملنا بنفسك',
      'errorNamePhone': 'يرجى إدخال الاسم ورقم الهاتف على الأقل',
      'errorRequiredFields': 'يرجى ملء جميع الحقول المطلوبة',
      'errorWhatsapp': 'تعذر فتح واتساب',
      'errorEmail': 'تعذر فتح البريد الإلكتروني',
      'companyName': 'فيكس آند فير',
      'address': 'شارع كويلهوف 26، 34127 كاسل',
      'contact': 'اتصل بنا',
      'telephone': 'هاتف: 787654321+49',
      'emailAddress': 'البريد: Info@fix-fair.de',
      'imprint': 'البيانات القانونية',
      'privacy': 'الخصوصية',
      'terms': 'الشروط والأحكام',
      'copyright': '© 2024 فيكس آند فير. جميع الحقوق محفوظة.',

      'privateMoves': 'نقل خاص',
      'officeMoves': 'نقل المكاتب',
      'seniorMoves': 'نقل كبار السن',
      'kitchenAssembly': 'تركيب المطابخ',
      'assemblies': 'تركيب الأثاث',
      'householdLiquidation': 'تسييل المنزل',
      'somethingelse': 'أخرى',

      'privateMovesDesc': 'نقل خال من الإجهاد للأسر الخاصة',
      'officeMovesDesc': 'نقل للشركات والمكاتب',
      'seniorMovesDesc': 'نقل مع اعتبارات خاصة',
      'kitchenAssemblyDesc': 'تركيب احترافي لمطبخك الجديد',
      'assembliesDesc': 'تركيب جميع أنواع الأثاث',
      'householdLiquidationDesc': 'جميع أنواع تسييل المنازل',

      // خدمات جديدة
      'umzugsservice': 'خدمة النقل',
      'entruempelung': 'التخلص من الفوضى',
      'trockenbau': 'تركيب الجدران الجافة',
      'abbruch': 'هدم',
      'gebaeudereinigung': 'تنظيف المباني',
      'bodenleger': 'تركيب الأرضيات',
      'streichen': 'الطلاء',
      'tapezieren': 'ورق الجدران',
      'renovierung': 'ترميم',
      'gartenarbeit': 'بستنة',
      'hausmeisterservice': 'خدمة الحارس',

      'umzugsserviceDesc': 'خدمة نقل كاملة للقطاعين الخاص والأعمال',
      'entruempelungDesc': 'التخلص من الفوضى والتخلص منها بشكل احترافي',
      'trockenbauDesc': 'جميع أنواع أعمال الجدران الجافة',
      'abbruchDesc': 'أعمال الهدم والتفكيك',
      'gebaeudereinigungDesc': 'تنظيف شامل للمباني',
      'bodenlegerDesc': 'تركيب جميع أنواع الأرضيات',
      'streichenDesc': 'أعمال الطلاء والدهان',
      'tapezierenDesc': 'ورق الجدران وتصميم الجدران',
      'renovierungDesc': 'أعمال الترميم الكاملة',
      'gartenarbeitDesc': 'العناية بالحدائق وتنسيق المواقع',
      'hausmeisterserviceDesc': 'خدمة حارس شاملة',

      'moveInAddress': 'عنوان الانتقال إلى *',
      'moveOutAddress': 'عنوان المغادرة من *',
      'roomCount': 'عدد الغرف *',
      'inspectionType': 'نوع المعاينة *',
      'personalData': 'البيانات الشخصية',
      'moveData': 'بيانات النقل',
      'additionalInfo': 'معلومات إضافية',

      'settings': 'الإعدادات',
      'darkMode': 'الوضع الداكن',
      'language': 'اللغة',
      'settingsSaved': 'يتم حفظ الإعدادات تلقائيًا',
      'darkModeEnabled': 'تم تمكين الوضع الداكن',
      'darkModeDisabled': 'تم تمكين الوضع الفاتح',
      'languageChanged': 'تم تغيير اللغة',

      'onlineInspection': 'معاينة عبر الإنترنت',
      'onSiteInspection': 'معاينة في الموقع',
      'telefonischeBesprechung': 'استشارة هاتفية',
      'videoCall': 'مكالمة فيديو',
      'sonstigeBesichtigung': 'أخرى',

      'rooms1-2': '1-2 غرفة',
      'rooms3-4': '3-4 غرف',
      'rooms4-5': '4-5 غرف',
      'rooms5plus': 'أكثر من 5 غرف',

      'ourServices': 'خدماتنا',
      'contactForOffer': 'اتصل بنا للحصول على عرض',

      'agbTitle': 'الشروط والأحكام',
      'datenschutzTitle': 'سياسة الخصوصية',
      'impressumTitle': 'البيانات القانونية',
      'addReviewTitle': 'كتابة تقييم',
      'trustDetailsTitle': 'لماذا يثق بنا العملاء',
      'adminReviewsTitle': 'إدارة التقييمات',

      // AGB Page - Arabic
      'agbSection1': '§ 1 نطاق التطبيق',
      'agbContent1':
          '1. تنطق هذه الشروط والأحكام العامة على جميع العقود المبرمة بين Fix - Fair GmbH والعميل.',
      'agbSection2': '§ 2 إبرام العقد',
      'agbContent2':
          '1. لا تمثل عرض الخدمات على الإنترنت عرضًا ملزمًا قانونيًا، بل فقط دعوة لتقديم عرض.',
      'agbSection3': '§ 3 الأسعار وشروط الدفع',
      'agbContent3':
          '1. جميع الأسعار باليورو وتشمل ضريبة القيمة المضافة القانونية.',
      'agbSection4': '§ 4 نطاق الخدمات والأداء',
      'agbContent4': '1. ينشأ نطاق الخدمات المقدمة من وصف الخدمة في العرض.',
      'agbSection5': '§ 5 حق الإلغاء',
      'agbContent5': '1. للمستهلكين حق الإلغاء خلال أربعة عشر يومًا.',
      'agbSection6': '§ 6 المسؤولية',
      'agbContent6':
          '1. يتم استبعاد المسؤولية عن الإهمال الطفيف، ما لم يتم انتهاك الالتزامات التعاقدية الأساسية.',
      'agbSection7': '§ 7 الأحكام الختامية',
      'agbContent7':
          '1. ينطبق قانون جمهورية ألمانيا الاتحادية.\n2. مكان الأداء هو كاسل.\n3. مكان الاختصاص القضائي هو كاسل.',

      // Datenschutz Page - Arabic
      'privacySection1': '1. حماية البيانات في لمحة',
      'privacyContent1':
          'معلومات عامة\nتقدم المعلومات التالية نظرة عامة بسيطة عما يحدث لبياناتك الشخصية عند زيارة موقعنا الإلكتروني. البيانات الشخصية هي أي بيانات يمكن من خلالها تحديد هويتك شخصيًا.',
      'privacySection2': '2. معلومات عامة وإلزامية',
      'privacyContent2':
          'حماية البيانات\nيأخذ مشغلو هذه الصفحات حماية بياناتك الشخصية على محمل الجد. نتعامل مع بياناتك الشخصية بسرية ووفقًا للوائح حماية البيانات القانونية وإعلان حماية البيانات هذا.',
      'privacySection3': '3. جمع البيانات على موقعنا الإلكتروني',
      'privacyContent3':
          'ملفات تعريف الارتباط\nتستخدم المواقع الإلكترونية جزئيًا ما يسمى بملفات تعريف الارتباط. لا تسبب ملفات تعريف الارتباط أي ضرر لجهاز الكمبيوتر الخاص بك ولا تحتوي على فيروسات. تخدم ملفات تعريف الارتباط لجعل عرضنا أكثر سهولة وفعالية وأمانًا.',
      'privacySection4': '4. أدوات التحليل وأطراف خارجية',
      'privacyContent4':
          'عند زيارة موقعنا الإلكتروني، قد يتم تقييم سلوك التصفح الخاص بك إحصائيًا. يتم ذلك primarily مع ملفات تعريف الارتباط وما يسمى ببرامج التحليل. يكون تحليل سلوك التصفح الخاص بك مجهولاً عادةً؛ لا يمكن تتبع سلوك التصفح back إليك.',
      'privacySection5': '5. الهيئة المسؤولة',
      'privacyContent5':
          'الهيئة المسؤولة عن معالجة البيانات على هذا الموقع هي:\nFix - Fair\nشارع كويلهوف 26\n34127 كاسل\nهاتف: 787654321+49\nبريد إلكتروني: Info@fix-fair.de',
      'privacySection6': '6. سحب موافقتك على معالجة البيانات',
      'privacyContent6':
          'العديد من عمليات معالجة البيانات ممكنة فقط بموافقتك الصريحة. يمكنك سحب الموافقة التي قدمتها بالفعل في أي وقت. يكفي إخطار غير رسمي عبر البريد الإلكتروني إلينا.',

      // Impressum Page - Arabic
      'imprintSection1': 'معلومات وفقًا لـ § 5 TMG:',
      'imprintContent1': 'Fix - Fair\nشارع كويلهوف 26\n34127 كاسل',
      'imprintSection2': 'المالك:',
      'imprintContent2':
          'شحادة أيمن\nتاريخ الميلاد: 10.01.1996\nمكان الميلاد: المعضمية، سوريا',
      'imprintSection3': 'الاتصال:',
      'imprintContent3':
          'هاتف: 787654321+49\nبريد إلكتروني: Info@fix-fair.de\nبريد إلكتروني: aymanshehadeh48@gmail.com\nويب: www.fix-fair.de',
      'imprintSection4': 'التطوير:',
      'imprintContent4': 'التطبيق طوره شحادة أيمن',
      'imprintSection5': 'رقم ضريبة القيمة المضافة:',
      'imprintContent5':
          'رقم تعريف ضريبة القيمة المضافة وفقًا لـ §27a قانون ضريبة القيمة المضافة: DE123456789',
      'imprintSection6': 'المسؤول عن المحتوى وفقًا لـ § 55 Abs. 2 RStV:',
      'imprintContent6': 'شحادة أيمن\nشارع كويلهوف 26\n34127 كاسل',

      // Trust Details Page - Arabic
      'trustPoint1Title': 'جودة معتمدة',
      'trustPoint1Desc':
          'يتم تنفيذ جميع خدماتنا من قبل محترفين معتمدين وتخضع لضوابط جودة صارمة.',
      'trustPoint2Title': 'أسعار عادلة',
      'trustPoint2Desc':
          'تسعير شفاف بدون تكاليف خفية. تعرف دائمًا بالضبط ما تدفعه.',
      'trustPoint3Title': 'خبرة',
      'trustPoint3Desc':
          'أكثر من 10 سنوات من الخبرة في الصناعة مع آلاف العملاء الراضين.',
      'trustPoint4Title': 'تأمين',
      'trustPoint4Desc':
          'تأمين كامل لجميع الخدمات لأقصى قدر من الأمان وحماية ممتلكاتك.',
      'trustPoint5Title': 'دعم 24/7',
      'trustPoint5Desc':
          'خدمة عملاء متاحة على مدار الساعة لجميع استفساراتك واهتماماتك.',
      'trustReadyTitle': 'مستعد للنقل؟',
      'trustReadySubtitle': 'اتصل بنا اليوم للحصول على عرض غير ملزم!',
      'trustRequestButton': 'اطلب عرض سعر الآن',

      // ARABISCHE ÜBERSETZUNGEN
      'googleReviews': 'تقييمات جوجل',
      'rateUsGoogle': 'قيمنا على جوجل',
      'rateDescription': 'ساعد العملاء الآخرين في اتخاذ قرارهم',
      'rateNowButton': 'قيم الآن على جوجل',
      'supportEmail': 'البريد الإلكتروني للدعم: support@fix-fair.de',
      'reviewPrompt': 'شاركنا تجربتك',
      'customerTestimonials': 'شهادات العملاء',
      'satisfiedClients': 'عملاء راضون في كاسل',

      'representedBy': 'يمثلها:',
      'vatId': 'رقم ضريبة القيمة المضافة:',
      'vatInfo':
          'رقم تعريف ضريبة القيمة المضافة وفقًا للقسم 27a من قانون ضريبة القيمة المضافة:',
      'disputeResolution': 'تسوية المنازعات:',
      'disputeContent':
          'توفر المفوضية الأوروبية منصة لتسوية المنازعات عبر الإنترنت (OS)',
      'disputeNotParticipate':
          'لسنا على استعداد أو ملزمين للمشاركة في إجراءات تسوية المنازعات أمام هيئة تحكيم المستهلك.',
      'liabilityContent':
          'كمزود خدمة، نحن مسؤولون عن المحتوى الخاص بنا على هذه الصفحات وفقًا للقوانين العامة بموجب القسم 7 (1) من قانون الوسائط الألمانية (TMG).',
      'copyrightInfo':
          'المحتويات والأعمال التي أنشأها مشغلو الموقع على هذه الصفحات تخضع لقانون حقوق النشر الألماني.',
      'imageSources': 'مصادر الصور والأيقونات:',
      'animationTools': 'الرسوم المتحركة تم إنشاؤها باستخدام Rive',
      'svgSources': 'أيقونات SVG من:',
      'graphicLicense':
          'جميع الرسومات والأيقونات المستخدمة متاحة بموجب تراخيص مجانية أو تم إنشاؤها بشكل مستقل.',
      'freepik': 'Freepik',
      'svgRepo': 'SVG Repo',
      'legalInfo': 'المعلومات القانونية',
      'companyInfo': 'معلومات الشركة',

      'privacyOverview': 'نظرة عامة على حماية البيانات',
      'dataCollection': 'جمع البيانات على هذا الموقع',
      'howWeCollect': 'كيف نجمع بياناتك؟',
      'dataUsage': 'لماذا نستخدم بياناتك؟',
      'yourRights': 'ما هي حقوقك فيما يتعلق ببياناتك؟',
      'analyticsTools': 'أدوات التحليل وأدوات الطرف الثالث',
      'hostingProvider': 'الاستضافة',
      'generalInfo': 'معلومات عامة وإلزامية',
      'responsibleParty': 'ملاحظة حول الجهة المسؤولة',
      'storageDuration': 'مدة التخزين',
      'revokeConsent': 'سحب موافقتك على معالجة البيانات',
      'objectionRight': 'حق الاعتراض على جمع البيانات في حالات خاصة',
      'complaintRight': 'حق تقديم شكوى إلى السلطة الإشرافية المختصة',
      'dataPortability': 'حق نقل البيانات',
      'sslEncryption': 'تشفير SSL أو TLS',
      'paymentEncryption': 'معاملات الدفع المشفرة على هذا الموقع',
      'dataSecurity': 'أمان البيانات',
      'privacyPolicy': 'سياسة الخصوصية',

      // Service Features
      'professionalEquipment': 'معدات احترافية',
      'insuredTransport': 'نقل مؤمن',
      'assemblyDisassembly': 'تركيب/تفكيك الأثاث',
      'packagingIncluded': 'مواد التغليف مشمولة',
      'environmentalDisposal': 'تخلص صديق للبيئة',
      'recyclingPossible': 'إعادة التدوير حيثما أمكن',
      'bulkyWasteRemoval': 'إزالة النفايات الضخمة',
      'cleaningIncluded': 'التنظيف مشمول',
      'ceilingLinings': 'بطانات السقف',
      'soundproofingSolutions': 'حلول عازلة للصوت',
      'fireProtectionMeasures': 'إجراءات الحماية من الحرائق',
      'electricalPreparation': 'تحضيرات كهربائية',
      'bathroomDismantling': 'تفكيك الحمام',
      'kitchenDismantling': 'تفكيك المطبخ',
      'hazardousRemediation': 'معالجة المواد الخطرة',
      'materialDisposal': 'تخلص من جميع المواد',
      'windowCleaning': 'تنظيف النوافذ',
      'carpetCleaning': 'تنظيف السجاد',
      'maintenanceCleaning': 'تنظيف الصيانة',
      'specialCleaning': 'تنظيف خاص',
      'parquetLayingSanding': 'تركيب وصنفرة الباركيه',
      'vinylFlooringLaying': 'تركيب أرضيات الفينيل',
      'carpetLaying': 'تركيب السجاد',
      'tileLaying': 'تركيب البلاط',
      'wallpaperPreparation': 'تحضير ورق الحائط',
      'doorWindowPainting': 'طلاء الأبواب والنوافذ',
      'radiatorPainting': 'طلاء المشعات',
      'facadeWork': 'أعمال الواجهة',
      'nonWovenWallpapers': 'تركيب ورق حائط غير منسوج',
      'designerWallpapers': 'ورق حائط مصمم',
      'patternWallpapers': 'ورق حائط مزخرف بشكل احترافي',
      'specialWallpapers': 'ورق حائط خاص (ملمس، إلخ)',
      'lawnMowingCare': 'قص العشب والعناية به',
      'hedgeTrimming': 'تقليم التحوط',
      'plantingWork': 'أعمال الزراعة',
      'pathsTerraces': 'إنشاء الممرات والتراسات',
      'smallRepairs': 'إصلاحات صغيرة',
      'winterService': 'خدمة الشتاء',
      'greenSpaceCare': 'العناية بالمساحات الخضراء',
      'emergencyService': 'خدمة الطوارئ متاحة',
      'electricalConnections': 'وصلات كهربائية',
      'waterConnections': 'وصلات المياه',
      'countertopCutting': 'قطع أسطح العمل',
      'applianceInstallation': 'تركيب الأجهزة',
      'builtinCabinets': 'تركيب الخزائن المدمجة',
      'shelvesCabinets': 'تجميع الرفوف والخزائن',
      'bedsMattresses': 'تجميع الأسرة والمراتب',
      'gardenFurniture': 'تجميع أثاث الحديقة',
      'sortingItems': 'فرز العناصر',
      'usableItems': 'استخدام العناصر القابلة للاستخدام',
      'disposalUnusable': 'تخلص من العناصر غير القابلة للاستخدام',
      'premisesCleaning': 'تنظيف المباني',
      'customSolutions': 'حلول مخصصة',
      'flexibleScheduling': 'جدولة مرنة',
      'individualOffers': 'عروض فردية',
      'specialOrders': 'طلبات خاصة ممكنة',
      'onSiteConsultation': 'استشارة في الموقع',

      // ARABIC SEO KEYWORDS
      'seoUmzugKassel': 'نقل كاسل - خدمة نقل محترفة',
      'seoUmzugsunternehmen': 'شركة نقل كاسل - Fix - Fair',
      'seoMoebeltransport': 'نقل الأثاث كاسل - رخيص وموثوق',
      'seoEntruempelung': 'تخليص كاسل - سريع وبأسعار معقولة',
      'seoHaushaltsaufloesung': 'تسييل المنزل كاسل - خدمة كاملة',
      'seoMoebelmontage': 'تركيب الأثاث كاسل - تركيب محترف',
      'seoKuechenmontage': 'تركيب المطبخ كاسل - تركيب محترف',
      'seoBueroUmzug': 'نقل المكتب كاسل - خدمة نقل الأعمال',
      'seoSeniorenUmzug': 'نقل كبار السن كاسل - خدمة رعاية',
      'seoMoebelpacker': 'حاملو الأثاث كاسل - مساعدو نقل ذوي خبرة',
      'seoGuenstigUmzug': 'نقل رخيص كاسل - أفضل الأسعار',
      'seoProfessionellUmzug': 'خدمة نقل محترفة شمال هيسن',
      'seoUmzugMontage': 'نقل مع التركيب - باقة كاملة',
      'seoEntsorgung': 'تخلص كاسل - التخلص الصديق للبيئة',
      'seoRaeumung': 'تخليص كاسل - عمليات تخليص كاملة',
      'seoNordhessen': 'نقل شمال هيسن \n خدمات نقل إقليمية',
      'seoUmzugsdienst': 'خدمة نقل هيسن - خدمات على مستوى البلاد',
      'seoMoebeltaxi': 'تاكسي الأثاث كاسل - نقل صغير',
      'seoTransporter': 'استئجار نقل كاسل - حلول النقل',
      'seoQualityService': 'نقل عالي الجودة كاسل - خدمة Fix - Fair',
      'seoReliableMoving': 'خدمة نقل موثوقة كاسل',
    },
    'tr': {
      'appTitle': 'Fix - Fair',
      'servicesTitle': 'Hizmetlerimiz',
      'servicesSubtitle': 'Hizmetler için ortağınız',
      'requestTitle': 'Ücretsiz Teklif Talebi',
      'requestSubtitle': 'Bize bağlayıcı olmayan bir talep gönderin',
      'contactDetails': 'İletişim Bilgileri',
      'name': 'İsim *',
      'email': 'E-posta',
      'phone': 'Telefon *',
      'message': 'Mesaj (isteğe bağlı)',
      'selectService': 'Hizmet Seçin',
      'whatsappButton': 'WhatsApp ile Hemen Talep Et',
      'emailButton': 'E-posta ile Talep Et',
      'whyTrust': 'Müşteriler Neden Bize Güveniyor',
      'whyTrustSub': 'Adil fiyatlarla profesyonel hizmetler',
      'satisfiedCustomers': 'Memnun Müşteriler',
      'satisfiedCustomersSub': 'Çalışmamızı kendiniz görün',
      'errorNamePhone': 'Lütfen en azından isim ve telefon numarası girin',
      'errorRequiredFields': 'Lütfen tüm gerekli alanları doldurun',
      'errorWhatsapp': 'WhatsApp açılamadı',
      'errorEmail': 'E-posta açılamadı',
      'companyName': 'Fix - Fair',
      'address': 'Quellhof Caddesi 26, 34127 Kassel',
      'contact': 'İletişim',
      'telephone': 'Tel: +49 176 12345678',
      'emailAddress': 'E-posta: Info@fix-fair.de',
      'imprint': 'İletişim Bilgileri',
      'privacy': 'Gizlilik',
      'terms': 'Şartlar ve Koşullar',
      'copyright': '© 2024 Fix - Fair. Tüm hakları saklıdır.',

      'privateMoves': 'Özel Taşınmalar',
      'officeMoves': 'Ofis Taşınmaları',
      'seniorMoves': 'Yaşlı Taşınmaları',
      'kitchenAssembly': 'Mutfak Montajı',
      'assemblies': 'Mobilya Montajı',
      'householdLiquidation': 'Ev Tasfiyesi',
      'somethingelse': 'Diğer',

      'privateMovesDesc': 'Özel haneler için stressiz taşınma',
      'officeMovesDesc': 'Şirketler ve ofisler için taşınma',
      'seniorMovesDesc': 'Özel özen gösterilen taşınma',
      'kitchenAssemblyDesc': 'Yeni mutfağınızın profesyonel montajı',
      'assembliesDesc': 'Her türlü mobilya montajı',
      'householdLiquidationDesc': 'Her türlü ev tasfiyesi',

      // Yeni Hizmetler
      'umzugsservice': 'Taşınma Hizmeti',
      'entruempelung': 'Eşya Tasfiyesi',
      'trockenbau': 'Alçıpan Montajı',
      'abbruch': 'Yıkım',
      'gebaeudereinigung': 'Bina Temizliği',
      'bodenleger': 'Zemin Döşeme',
      'streichen': 'Boyama',
      'tapezieren': 'Duvar Kağıdı',
      'renovierung': 'Yenileme',
      'gartenarbeit': 'Bahçe İşleri',
      'hausmeisterservice': 'Kapıcı Hizmeti',

      'umzugsserviceDesc': 'Özel ve iş için komple taşınma hizmeti',
      'entruempelungDesc': 'Profesyonel eşya tasfiyesi ve atık yönetimi',
      'trockenbauDesc': 'Her türlü alçıpan işi',
      'abbruchDesc': 'Yıkım ve söküm işleri',
      'gebaeudereinigungDesc': 'Kapsamlı bina temizliği',
      'bodenlegerDesc': 'Tüm zemin kaplamalarının montajı',
      'streichenDesc': 'Boyama ve vernik işleri',
      'tapezierenDesc': 'Duvar kağıdı ve duvar tasarımı',
      'renovierungDesc': 'Komple yenileme işleri',
      'gartenarbeitDesc': 'Bahçe bakımı ve peyzaj',
      'hausmeisterserviceDesc': 'Kapsamlı kapıcı hizmeti',

      'moveInAddress': 'Taşınılacak Adres *',
      'moveOutAddress': 'Taşınılacaktan Adres *',
      'roomCount': 'Oda Sayısı *',
      'inspectionType': 'İnceleme Türü *',
      'personalData': 'Kişisel Veriler',
      'moveData': 'Taşınma Verileri',
      'additionalInfo': 'Ek Bilgiler',

      'settings': 'Ayarlar',
      'darkMode': 'Karanlık Mod',
      'language': 'Dil',
      'settingsSaved': 'Ayarlar otomatik olarak kaydedilir',
      'darkModeEnabled': 'Karanlık mod etkin',
      'darkModeDisabled': 'Aydınlık mod etkin',
      'languageChanged': 'Dil değiştirildi',

      'onlineInspection': 'Çevrimiçi İnceleme',
      'onSiteInspection': 'Yerinde İnceleme',
      'telefonischeBesprechung': 'Telefon Görüşmesi',
      'videoCall': 'Video Görüşme',
      'sonstigeBesichtigung': 'Diğer',

      'rooms1-2': '1-2 Oda',
      'rooms3-4': '3-4 Oda',
      'rooms4-5': '4-5 Oda',
      'rooms5plus': '5+ Oda',

      'ourServices': 'Hizmetlerimiz',
      'contactForOffer': 'Teklif için bize ulaşın',

      'agbTitle': 'Genel Şartlar ve Koşullar',
      'datenschutzTitle': 'Gizlilik Politikası',
      'impressumTitle': 'İletişim Bilgileri',
      'addReviewTitle': 'Değerlendirme Yaz',
      'trustDetailsTitle': 'Müşteriler Neden Bize Güveniyor',
      'adminReviewsTitle': 'Değerlendirmeleri Yönet',

      // AGB Page - Turkish
      'agbSection1': '§ 1 Kapsam',
      'agbContent1':
          '1. Bu Genel Şartlar ve Koşullar, Fix - Fair GmbH ile müşteri arasında akdedilen tüm sözleşmeler için geçerlidir.',
      'agbSection2': '§ 2 Sözleşme Akdi',
      'agbContent2':
          '1. İnternetteki hizmet sunumu, yasal olarak bağlayıcı bir teklif değil, yalnızca bir teklif verme davetidir.',
      'agbSection3': '§ 3 Fiyatlar ve Ödeme Koşulları',
      'agbContent3': '1. Tüm fiyatlar Euro cinsindendir ve yasal KDV içerir.',
      'agbSection4': '§ 4 Hizmet Kapsamı ve Yürütme',
      'agbContent4':
          '1. Sunulacak hizmetlerin kapsamı, teklifteki hizmet tanımından kaynaklanır.',
      'agbSection5': '§ 5 Cayma Hakkı',
      'agbContent5': '1. Tüketicilerin on dört günlük cayma hakkı vardır.',
      'agbSection6': '§ 6 Sorumluluk',
      'agbContent6':
          '1. Hafif ihmalden kaynaklanan sorumluluk, temel sözleşme yükümlülükleri ihlal edilmediği sürece hariç tutulur.',
      'agbSection7': '§ 7 Son Hükümler',
      'agbContent7':
          '1. Federal Almanya Cumhuriyeti hukuku uygulanır.\n2. İfa yeri Kassel\'dir.\n3. Yetkili mahkeme Kassel\'dir.',

      // Datenschutz Page - Turkish
      'privacySection1': '1. Veri Koruma Özeti',
      'privacyContent1':
          'Genel Bilgiler\nAşağıdaki bilgiler, web sitemizi ziyaret ettiğinizde kişisel verilerinize ne olduğuna dair basit bir genel bakış sunar. Kişisel veriler, kişisel olarak tanımlanabileceğiniz tüm verilerdir.',
      'privacySection2': '2. Genel Bilgiler ve Zorunlu Bilgiler',
      'privacyContent2':
          'Veri Koruma\nBu sayfaların operatörleri kişisel verilerinizin korunmasını çok ciddiye alır. Kişisel verilerinizi gizli tutar ve yasal veri koruma düzenlemelerine ve bu veri koruma beyanına uygun şekilde işleriz.',
      'privacySection3': '3. Web Sitemizde Veri Toplama',
      'privacyContent3':
          'Çerezler\nWeb siteleri kısmen çerez adı verilenleri kullanır. Çerezler bilgisayarınıza zarar vermez ve virüs içermez. Çerezler, teklifimizi daha kullanıcı dostu, etkili ve güvenli hale getirmeye hizmet eder.',
      'privacySection4': '4. Analiz Araçları ve Üçüncü Taraf Araçlar',
      'privacyContent4':
          'Web sitemizi ziyaret ettiğinizde, gezinme davranışınız istatistiksel olarak değerlendirilebilir. Bu primarily çerezler ve sözde analiz programları ile yapılır. Gezinme davranışınızın analizi genellikle anonimdir; gezinme davranışı size kadar izlenemez.',
      'privacySection5': '5. Sorumlu Birim',
      'privacyContent5':
          'Bu web sitesindeki veri işlemeden sorumlu birim:\nFix - Fair\nQuellhof Caddesi 26\n34127 Kassel\nTelefon: +49 176 12345678\nE-posta: Info@fix-fair.de',
      'privacySection6': '6. Veri İşleme İzninizi Geri Çekme',
      'privacyContent6':
          'Birçok veri işleme işlemi yalnızca açık rızanızla mümkündür. Zaten verdiğiniz bir ondamayı istediğiniz zaman geri çekebilirsiniz. Bunun için bize e-posta yoluyla resmi olmayan bir bildirim yeterlidir.',

      // Impressum Page - Turkish
      'imprintSection1': '§ 5 TMG\'ye göre bilgiler:',
      'imprintContent1': 'Fix - Fair\nQuellhof Caddesi 26\n34127 Kassel',
      'imprintSection2': 'Sahip:',
      'imprintContent2':
          'Shehadeh Ayman\nDoğum tarihi: 10.01.1996\nDoğum yeri: Muadamia, Suriye',
      'imprintSection3': 'İletişim:',
      'imprintContent3':
          'Telefon: +49 176 12345678\nE-posta: Info@fix-fair.de\nE-posta: aymanshehadeh48@gmail.com\nWeb: www.fix-fair.de',
      'imprintSection4': 'Geliştirme:',
      'imprintContent4': 'Uygulama Shehadeh Ayman tarafından geliştirildi',
      'imprintSection5': 'KDV No:',
      'imprintContent5':
          '§27a Katma Değer Vergisi Yasası uyarınca katma değer vergisi kimlik numarası: DE123456789',
      'imprintSection6': '§ 55 Abs. 2 RStV\'ye göre içerikten sorumlu:',
      'imprintContent6': 'Shehadeh Ayman\nQuellhof Caddesi 26\n34127 Kassel',

      // Trust Details Page - Turkish
      'trustPoint1Title': 'Sertifikalı Kalite',
      'trustPoint1Desc':
          'Tüm hizmetlerimiz sertifikalı profesyoneller tarafından gerçekleştirilir ve katı kalite kontrollerine tabidir.',
      'trustPoint2Title': 'Adil Fiyatlar',
      'trustPoint2Desc':
          'Gizli maliyetler olmadan şeffaf fiyatlandırma. Her zaman tam olarak ne ödediğinizi bilirsiniz.',
      'trustPoint3Title': 'Deneyim',
      'trustPoint3Desc':
          'Binlerce memnun müşteri ile sektörde 10 yıldan fazla deneyim.',
      'trustPoint4Title': 'Sigorta',
      'trustPoint4Desc':
          'Maksimum güvenlik ve mülkünüzün korunması için tüm hizmetlerin tam sigortası.',
      'trustPoint5Title': '7/24 Destek',
      'trustPoint5Desc':
          'Tüm soru ve endişeleriniz için 7/24 ulaşılabilir müşteri hizmetleri.',
      'trustReadyTitle': 'Taşınmaya hazır mısınız?',
      'trustReadySubtitle':
          'Bağlayıcı olmayan bir teklif için bugün bize ulaşın!',
      'trustRequestButton': 'Şimdi Teklif İste',

      // TÜRKÇE ÇEVİRİLER
      'googleReviews': 'Google Yorumları',
      'rateUsGoogle': 'Bizi Google\'da Değerlendirin',
      'rateDescription': 'Diğer müşterilere karar vermelerinde yardımcı olun',
      'rateNowButton': 'Şimdi Google\'da Değerlendir',
      'supportEmail': 'Destek e-posta: support@fix-fair.de',
      'reviewPrompt': 'Deneyimlerinizi bizimle paylaşın',
      'customerTestimonials': 'Müşteri Yorumları',
      'satisfiedClients': 'Kassel\'de Memnun Müşteriler',

      'representedBy': 'Temsil eden:',
      'vatId': 'KDV No:',
      'vatInfo':
          '§27a Katma Değer Vergisi Yasası uyarınca katma değer vergisi kimlik numarası:',
      'disputeResolution': 'Uyuşmazlık Çözümü:',
      'disputeContent':
          'Avrupa Komisyonu çevrimiçi uyuşmazlık çözümü (OS) için bir platform sağlar',
      'disputeNotParticipate':
          'Bir tüketici tahkim kurulu önünde uyuşmazlık çözümü prosedürlerine katılmaya hazır veya zorunlu değiliz.',
      'liabilityContent':
          'Bir hizmet sağlayıcı olarak, Alman Telemedia Yasası\'nın (TMG) 7(1) Maddesi uyarınca bu sayfalardaki kendi içeriklerimizden genel yasalara göre sorumluyuz.',
      'copyrightInfo':
          'Site operatörleri tarafından bu sayfalarda oluşturulan içerikler ve eserler Alman telif hakkı yasasına tabidir.',
      'imageSources': 'Görüntü ve Simge Kaynakları:',
      'animationTools': 'Rive ile oluşturulan animasyonlar',
      'svgSources': 'SVG Simgeleri:',
      'graphicLicense':
          'Kullanılan tüm grafikler ve simgeler ücretsiz lisanslar altında mevcuttur veya bağımsız olarak oluşturulmuştur.',
      'freepik': 'Freepik',
      'svgRepo': 'SVG Repo',
      'legalInfo': 'Yasal Bilgiler',
      'companyInfo': 'Şirket Bilgileri',

      'privacyOverview': 'Veri Koruma Genel Bakış',
      'dataCollection': 'Bu Web Sitesinde Veri Toplama',
      'howWeCollect': 'Verilerinizi nasıl topluyoruz?',
      'dataUsage': 'Verilerinizi ne için kullanıyoruz?',
      'yourRights': 'Verilerinizle ilgili hangi haklara sahipsiniz?',
      'analyticsTools': 'Analitik Araçlar ve Üçüncü Taraf Araçlar',
      'hostingProvider': 'Barındırma',
      'generalInfo': 'Genel Bilgiler ve Zorunlu Bilgiler',
      'responsibleParty': 'Sorumlu Taraf Hakkında Not',
      'storageDuration': 'Saklama Süresi',
      'revokeConsent': 'Veri İşleme İzninizi Geri Çekme',
      'objectionRight': 'Özel Durumlarda Veri Toplamaya İtiraz Hakkı',
      'complaintRight': 'Yetkili Denetim Otoritesine Şikayette Bulunma Hakkı',
      'dataPortability': 'Veri Taşınabilirliği Hakkı',
      'sslEncryption': 'SSL veya TLS Şifreleme',
      'paymentEncryption': 'Bu Web Sitesinde Şifreli Ödeme İşlemleri',
      'dataSecurity': 'Veri Güvenliği',
      'privacyPolicy': 'Gizlilik Politikası',

      // Service Features
      'professionalEquipment': 'Profesyonel ekipman',
      'insuredTransport': 'Sigortalı nakliye',
      'assemblyDisassembly': 'Mobilya montajı/sökümü',
      'packagingIncluded': 'Ambalaj malzemesi dahil',
      'environmentalDisposal': 'Çevre dostu bertaraf',
      'recyclingPossible': 'Mümkün olduğunda geri dönüşüm',
      'bulkyWasteRemoval': 'Büyük hacimli atık kaldırma',
      'cleaningIncluded': 'Temizlik dahil',
      'ceilingLinings': 'Tavan kaplamaları',
      'soundproofingSolutions': 'Ses yalıtım çözümleri',
      'fireProtectionMeasures': 'Yangın koruma önlemleri',
      'electricalPreparation': 'Elektrik hazırlığı',
      'bathroomDismantling': 'Banyo sökümü',
      'kitchenDismantling': 'Mutfak sökümü',
      'hazardousRemediation': 'Tehlikeli madde ıslahı',
      'materialDisposal': 'Tüm malzemelerin bertarafı',
      'windowCleaning': 'Pencere temizliği',
      'carpetCleaning': 'Halı temizliği',
      'maintenanceCleaning': 'Bakım temizliği',
      'specialCleaning': 'Özel temizlik',
      'parquetLayingSanding': 'Parke döşeme ve zımparalama',
      'vinylFlooringLaying': 'Vinil zemin döşeme',
      'carpetLaying': 'Halı döşeme',
      'tileLaying': 'Fayans döşeme',
      'wallpaperPreparation': 'Duvar kağıdı hazırlığı',
      'doorWindowPainting': 'Kapı ve pencere boyama',
      'radiatorPainting': 'Radyatör boyama',
      'facadeWork': 'Cephe çalışmaları',
      'nonWovenWallpapers': 'Dokumasız duvar kağıtları',
      'designerWallpapers': 'Tasarımcı duvar kağıtları',
      'patternWallpapers': 'Desenli duvar kağıtları profesyonelce',
      'specialWallpapers': 'Özel duvar kağıtları (doku, vb.)',
      'lawnMowingCare': 'Çim biçme ve bakım',
      'hedgeTrimming': 'Çit budama',
      'plantingWork': 'Dikim çalışmaları',
      'pathsTerraces': 'Yol ve teras inşaatı',
      'smallRepairs': 'Küçük tamiratlar',
      'winterService': 'Kış hizmeti',
      'greenSpaceCare': 'Yeşil alan bakımı',
      'emergencyService': 'Acil servis mevcut',
      'electricalConnections': 'Elektrik bağlantıları',
      'waterConnections': 'Su bağlantıları',
      'countertopCutting': 'Tezgah kesimi',
      'applianceInstallation': 'Cihaz kurulumu',
      'builtinCabinets': 'Gömme dolaplar montajı',
      'shelvesCabinets': 'Raf ve dolaplar montajı',
      'bedsMattresses': 'Yatak ve şilteler montajı',
      'gardenFurniture': 'Bahçe mobilyaları montajı',
      'sortingItems': 'Eşya sıralama',
      'usableItems': 'Kullanılabilir eşyaların değerlendirilmesi',
      'disposalUnusable': 'Kullanılamaz eşyaların bertarafı',
      'premisesCleaning': 'Mekan temizliği',
      'customSolutions': 'Özel çözümler',
      'flexibleScheduling': 'Esnek programlama',
      'individualOffers': 'Bireysel teklifler',
      'specialOrders': 'Özel siparişler mümkün',
      'onSiteConsultation': 'Yerinde danışmanlık',

      // TURKISH SEO KEYWORDS
      'seoUmzugKassel': 'Kassel Taşınma - Profesyonel Taşınma Hizmeti',
      'seoUmzugsunternehmen': 'Kassel Taşınma Şirketi - Fix - Fair',
      'seoMoebeltransport': 'Kassel Mobilya Nakliyesi - Ucuz ve Güvenilir',
      'seoEntruempelung': 'Kassel Eşya Tasfiyesi - Hızlı ve Uygun Fiyatlı',
      'seoHaushaltsaufloesung': 'Kassel Ev Tasfiyesi - Tam Hizmet',
      'seoMoebelmontage': 'Kassel Mobilya Montajı - Profesyonel Montaj',
      'seoKuechenmontage': 'Kassel Mutfak Montajı - Profesyonel Kurulum',
      'seoBueroUmzug': 'Kassel Ofis Taşınması - İş Taşınma Hizmeti',
      'seoSeniorenUmzug': 'Kassel Yaşlı Taşınması - Özenli Hizmet',
      'seoMoebelpacker':
          'Kassel Mobilya Taşıyıcıları - Deneyimli Taşınma Yardımcıları',
      'seoGuenstigUmzug': 'Kassel Ucuz Taşınma - En İyi Fiyatlar',
      'seoProfessionellUmzug': 'Kuzey Hesse Profesyonel Taşınma Hizmeti',
      'seoUmzugMontage': 'Montajlı Taşınma - Tam Paket',
      'seoEntsorgung': 'Kassel Atık Bertarafı - Çevre Dostu Bertaraf',
      'seoRaeumung': 'Kassel Tasfiye - Tam Tasfiyeler',
      'seoNordhessen': 'Kuzey Hesse Taşınması \n Bölgesel Taşınma Hizmetleri',
      'seoUmzugsdienst': 'Hesse Taşınma Hizmeti - Ülke Çapında Hizmetler',
      'seoMoebeltaxi': 'Kassel Mobilya Taksi - Küçük Nakliyat',
      'seoTransporter': 'Kassel Transporter Kiralama - Taşıma Çözümleri',
      'seoQualityService': 'Kassel Kaliteli Taşınma - Fix - Fair Hizmeti',
      'seoReliableMoving': 'Kassel Güvenilir Taşınma Hizmeti',
    },
    'ru': {
      'appTitle': 'Fix - Fair',
      'servicesTitle': 'Наши услуги',
      'servicesSubtitle': 'Ваш партнёр по услугам',
      'requestTitle': 'Бесплатный запрос предложения',
      'requestSubtitle': 'Отправьте нам необязательный запрос',
      'contactDetails': 'Контактные данные',
      'name': 'Имя *',
      'email': 'Эл. почта',
      'phone': 'Телефон *',
      'message': 'Сообщение (необязательно)',
      'selectService': 'Выберите услугу',
      'whatsappButton': 'Запросить через WhatsApp',
      'emailButton': 'Запросить по email',
      'whyTrust': 'Почему клиенты доверяют нам',
      'whyTrustSub': 'Профессиональные услуги по справедливым ценам',
      'satisfiedCustomers': 'Довольные клиенты',
      'satisfiedCustomersSub': 'Убедитесь в нашей работе сами',
      'errorNamePhone': 'Пожалуйста, введите имя и номер телефона',
      'errorRequiredFields': 'Пожалуйста, заполните все обязательные поля',
      'errorWhatsapp': 'Не удалось открыть WhatsApp',
      'errorEmail': 'Не удалось открыть email',
      'companyName': 'Fix - Fair',
      'address': 'Улица Квельхоф 26, 34127 Кассель',
      'contact': 'Контакт',
      'telephone': 'Тел: +49 176 12345678',
      'emailAddress': 'Email: Info@fix-fair.de',
      'imprint': 'Импрессум',
      'privacy': 'Конфиденциальность',
      'terms': 'Условия использования',
      'copyright': '© 2024 Fix - Fair. Все права защищены.',

      'privateMoves': 'Частные переезды',
      'officeMoves': 'Офисные переезды',
      'seniorMoves': 'Переезды для пожилых',
      'kitchenAssembly': 'Сборка кухонь',
      'assemblies': 'Сборка мебели',
      'householdLiquidation': 'Ликвидация домашних хозяйств',
      'somethingelse': 'Другое',

      'privateMovesDesc': 'Безстрессовые переезды для частных домохозяйств',
      'officeMovesDesc': 'Переезды для компаний и офисов',
      'seniorMovesDesc': 'Переезды с особым вниманием',
      'kitchenAssemblyDesc': 'Профессиональная сборка вашей новой кухни',
      'assembliesDesc': 'Сборка мебели любого типа',
      'householdLiquidationDesc': 'Ликвидация домашних хозяйств любого типа',

      // Новые услуги
      'umzugsservice': 'Услуги переезда',
      'entruempelung': 'Расхламление',
      'trockenbau': 'Монтаж гипсокартона',
      'abbruch': 'Демонтаж',
      'gebaeudereinigung': 'Уборка зданий',
      'bodenleger': 'Укладка напольных покрытий',
      'streichen': 'Покраска',
      'tapezieren': 'Обои',
      'renovierung': 'Ремонт',
      'gartenarbeit': 'Садоводство',
      'hausmeisterservice': 'Услуги дворника',

      'umzugsserviceDesc': 'Полный сервис переездов для частных лиц и бизнеса',
      'entruempelungDesc': 'Профессиональное расхламление и утилизация',
      'trockenbauDesc': 'Все виды работ с гипсокартоном',
      'abbruchDesc': 'Демонтажные и разборочные работы',
      'gebaeudereinigungDesc': 'Комплексная уборка зданий',
      'bodenlegerDesc': 'Укладка всех видов напольных покрытий',
      'streichenDesc': 'Малярные и покрасочные работы',
      'tapezierenDesc': 'Оклейка обоями и дизайн стен',
      'renovierungDesc': 'Полные ремонтные работы',
      'gartenarbeitDesc': 'Уход за садом и ландшафтный дизайн',
      'hausmeisterserviceDesc': 'Комплексные услуги дворника',

      'moveInAddress': 'Адрес въезда *',
      'moveOutAddress': 'Адрес выезда *',
      'roomCount': 'Количество комнат *',
      'inspectionType': 'Тип осмотра *',
      'personalData': 'Персональные данные',
      'moveData': 'Данные переезда',
      'additionalInfo': 'Дополнительная информация',

      'settings': 'Настройки',
      'darkMode': 'Темный режим',
      'language': 'Язык',
      'settingsSaved': 'Настройки сохраняются автоматически',
      'darkModeEnabled': 'Темный режим включен',
      'darkModeDisabled': 'Светлый режим включен',
      'languageChanged': 'Язык изменен',

      'onlineInspection': 'Онлайн осмотр',
      'onSiteInspection': 'Осмотр на месте',
      'telefonischeBesprechung': 'Телефонная консультация',
      'videoCall': 'Видеозвонок',
      'sonstigeBesichtigung': 'Другое',

      'rooms1-2': '1-2 комнаты',
      'rooms3-4': '3-4 комнаты',
      'rooms4-5': '4-5 комнат',
      'rooms5plus': 'Более 5 комнат',

      'ourServices': 'Наши услуги',
      'contactForOffer': 'Свяжитесь с нами для предложения',

      'agbTitle': 'Общие условия и положения',
      'datenschutzTitle': 'Политика конфиденциальности',
      'impressumTitle': 'Импрессум',
      'addReviewTitle': 'Написать отзыв',
      'trustDetailsTitle': 'Почему клиенты доверяют нам',
      'adminReviewsTitle': 'Управление отзывами',

      // AGB Page - Russian
      'agbSection1': '§ 1 Сфера применения',
      'agbContent1':
          '1. Настоящие Общие условия и положения применяются ко всем договорам, заключенным между Fix - Fair GmbH и клиентом.',
      'agbSection2': '§ 2 Заключение договора',
      'agbContent2':
          '1. Представление услуг в Интернете не является юридически обязательным предложением, а лишь приглашением сделать предложение.',
      'agbSection3': '§ 3 Цены и условия оплаты',
      'agbContent3':
          '1. Все цены указаны в евро и включают установленный законом НДС.',
      'agbSection4': '§ 4 Объем услуг и выполнение',
      'agbContent4':
          '1. Объем предоставляемых услуг вытекает из описания услуг в предложении.',
      'agbSection5': '§ 5 Право на отзыв',
      'agbContent5':
          '1. Потребители имеют право на отзыв в течение четырнадцати дней.',
      'agbSection6': '§ 6 Ответственность',
      'agbContent6':
          '1. Ответственность за легкую небрежность исключена, если не нарушены существенные договорные обязательства.',
      'agbSection7': '§ 7 Заключительные положения',
      'agbContent7':
          '1. Применяется право Федеративной Республики Германия.\n2. Местом исполнения является Кассель.\n3. Местом юрисдикции является Кассель.',

      // Datenschutz Page - Russian
      'privacySection1': '1. Защита данных вкратце',
      'privacyContent1':
          'Общая информация\nСледующая информация дает простое представление о том, что происходит с вашими персональными данными при посещении нашего веб-сайта. Персональные данные - это любые данные, по которым вы можете быть лично идентифицированы.',
      'privacySection2': '2. Общая и обязательная информация',
      'privacyContent2':
          'Защита данных\nОператоры этих страниц очень серьезно относятся к защите ваших персональных данных. Мы обрабатываем ваши персональные данные конфиденциально и в соответствии с правовыми положениями о защите данных и настоящей декларацией о защите данных.',
      'privacySection3': '3. Сбор данных на нашем веб-сайте',
      'privacyContent3':
          'Файлы cookie\nВеб-сайты частично используют так называемые файлы cookie. Файлы cookie не наносят вреда вашему компьютеру и не содержат вирусов. Файлы cookie служат для того, чтобы сделать наше предложение более удобным, эффективным и безопасным.',
      'privacySection4': '4. Инструменты анализа и инструменты третьих сторон',
      'privacyContent4':
          'При посещении нашего веб-сайта ваше поведение при просмотре может быть статистически оценено. Это делается primarily с помощью файлов cookie и так называемых программ анализа. Анализ вашего поведения при просмотре обычно анонимен; поведение при просмотре не может быть прослежено back к вам.',
      'privacySection5': '5. Ответственный орган',
      'privacyContent5':
          'Орган, ответственный за обработку данных на этом веб-сайте:\nFix - Fair\nУлица Квельхоф 26\n34127 Кассель\nТелефон: +49 176 12345678\nEmail: Info@fix-fair.de',
      'privacySection6': '6. Отзыв вашего согласия на обработку данных',
      'privacyContent6':
          'Многие операции по обработке данных возможны только с вашего явного согласия. Вы можете отозвать уже данное согласие в любое время. Для этого достаточно неформального сообщения по электронной почте нам.',

      // Impressum Page - Russian
      'imprintSection1': 'Информация согласно § 5 TMG:',
      'imprintContent1': 'Fix - Fair\nУлица Квельхоф 26\n34127 Кассель',
      'imprintSection2': 'Владелец:',
      'imprintContent2':
          'Шехаде Айман\nДата рождения: 10.01.1996\nМесто рождения: Муадамия, Сирия',
      'imprintSection3': 'Контакт:',
      'imprintContent3':
          'Телефон: +49 176 12345678\nEmail: Info@fix-fair.de\nEmail: aymanshehadeh48@gmail.com\nВеб: www.fix-fair.de',
      'imprintSection4': 'Разработка:',
      'imprintContent4': 'Приложение разработано Шехаде Айман',
      'imprintSection5': 'Идентификационный номер НДС:',
      'imprintContent5':
          'Идентификационный номер налога на добавленную стоимость согласно §27a Закона о налоге на добавленную стоимость: DE123456789',
      'imprintSection6':
          'Ответственный за содержание согласно § 55 Abs. 2 RStV:',
      'imprintContent6': 'Шехаде Айман\nУлица Квельхоф 26\n34127 Кассель',

      // Trust Details Page - Russian
      'trustPoint1Title': 'Сертифицированное качество',
      'trustPoint1Desc':
          'Все наши услуги выполняются сертифицированными специалистами и подлежат строгому контролю качества.',
      'trustPoint2Title': 'Справедливые цены',
      'trustPoint2Desc':
          'Прозрачное ценообразование без скрытых затрат. Вы всегда точно знаете, за что платите.',
      'trustPoint3Title': 'Опыт',
      'trustPoint3Desc':
          'Более 10 лет опыта в отрасли с тысячами довольных клиентов.',
      'trustPoint4Title': 'Страхование',
      'trustPoint4Desc':
          'Полное страхование всех услуг для максимальной безопасности и защиты вашей собственности.',
      'trustPoint5Title': 'Поддержка 24/7',
      'trustPoint5Desc':
          'Круглосуточная служба поддержки для всех ваших вопросов и проблем.',
      'trustReadyTitle': 'Готовы к переезду?',
      'trustReadySubtitle':
          'Свяжитесь с нами сегодня для получения бесплатного предложения!',
      'trustRequestButton': 'Запросить предложение сейчас',

      // НОВЫЕ ПЕРЕВОДЫ ДЛЯ СТРАНИЦЫ ДЕТАЛЕЙ КЛИЕНТА
      'googleReviews': 'Отзывы на Google',
      'rateUsGoogle': 'Оцените нас на Google',
      'rateDescription': 'Помогите другим клиентам сделать выбор',
      'rateNowButton': 'Оцените нас на Google сейчас',
      'supportEmail': 'Электронная почта поддержки: support@fix-fair.de',
      'reviewPrompt': 'Поделитесь своими впечатлениями с нами',
      'customerTestimonials': 'Отзывы клиентов',
      'satisfiedClients': 'Довольные клиенты в Касселе',

      // НОВЫЕ ПЕРЕВОДЫ ДЛЯ ОТПЕЧАТКА
      'representedBy': 'Представляет:',
      'vatId': 'Номер НДС:',
      'vatInfo':
          'Идентификационный номер НДС согласно §27a Закона о налоге на добавленную стоимость:',
      'disputeResolution': 'Решение споров:',
      'disputeContent':
          'Европейская комиссия предоставляет платформу для онлайн-разрешения споров (OS)',
      'disputeNotParticipate':
          'Мы не готовы и не обязаны участвовать в процедурах разрешения споров перед арбитражными органами для потребителей.',
      'liabilityContent':
          'Как поставщик услуг, мы несем ответственность за собственное содержание на этих страницах в соответствии с общими законами согласно разделу 7 (1) Закона о телемедийных услугах Германии (TMG).',
      'copyrightInfo':
          'Содержимое и работы, созданные операторами сайта на этих страницах, защищены немецким законодательством об авторском праве.',
      'imageSources': 'Источники изображений и иконок:',
      'animationTools': 'Анимации, созданные с помощью Rive',
      'svgSources': 'SVG иконки от:',
      'graphicLicense':
          'Все графические элементы и иконки, используемые на сайте, доступны по свободным лицензиям или были созданы независимо.',
      'freepik': 'Freepik',
      'svgRepo': 'SVG Repo',
      'legalInfo': 'Юридическая информация',
      'companyInfo': 'Информация о компании',

      // НОВЫЕ ПЕРЕВОДЫ ДЛЯ ПОЛИТИКИ КОНФИДЕНЦИАЛЬНОСТИ
      'privacyOverview': 'Защита данных в кратком изложении',
      'dataCollection': 'Сбор данных на этом сайте',
      'howWeCollect': 'Как мы собираем ваши данные?',
      'dataUsage': 'Для чего мы используем ваши данные?',
      'yourRights': 'Какие права у вас есть относительно ваших данных?',
      'analyticsTools': 'Инструменты аналитики и сторонние инструменты',
      'hostingProvider': 'Хостинг',
      'generalInfo': 'Общая информация и обязательная информация',
      'responsibleParty': 'Примечание о ответственной стороне',
      'storageDuration': 'Продолжительность хранения',
      'revokeConsent': 'Отзыв вашего согласия на обработку данных',
      'objectionRight': 'Право возражать против сбора данных в особых случаях',
      'complaintRight': 'Право на подачу жалобы в компетентный орган',
      'dataPortability': 'Право на переносимость данных',
      'sslEncryption': 'SSL или TLS шифрование',
      'paymentEncryption': 'Зашифрованные платежи на этом сайте',
      'dataSecurity': 'Безопасность данных',
      'privacyPolicy': 'Политика конфиденциальности',

      // Service Features
      'professionalEquipment': 'Профессиональное оборудование',
      'insuredTransport': 'Застрахованная перевозка',
      'assemblyDisassembly': 'Сборка/разборка мебели',
      'packagingIncluded': 'Упаковочные материалы включены',
      'environmentalDisposal': 'Экологичная утилизация',
      'recyclingPossible': 'Переработка где возможно',
      'bulkyWasteRemoval': 'Вывоз крупногабаритных отходов',
      'cleaningIncluded': 'Уборка включена',
      'ceilingLinings': 'Потолочные покрытия',
      'soundproofingSolutions': 'Звукоизоляционные решения',
      'fireProtectionMeasures': 'Меры противопожарной защиты',
      'electricalPreparation': 'Электрическая подготовка',
      'bathroomDismantling': 'Демонтаж ванной комнаты',
      'kitchenDismantling': 'Демонтаж кухни',
      'hazardousRemediation': 'Обезвреживание опасных материалов',
      'materialDisposal': 'Утилизация всех материалов',
      'windowCleaning': 'Мытье окон',
      'carpetCleaning': 'Чистка ковров',
      'maintenanceCleaning': 'Поддерживающая уборка',
      'specialCleaning': 'Специальная уборка',
      'parquetLayingSanding': 'Укладка и шлифовка паркета',
      'vinylFlooringLaying': 'Укладка виниловых полов',
      'carpetLaying': 'Укладка ковров',
      'tileLaying': 'Укладка плитки',
      'wallpaperPreparation': 'Подготовка обоев',
      'doorWindowPainting': 'Покраска дверей и окон',
      'radiatorPainting': 'Покраска радиаторов',
      'facadeWork': 'Фасадные работы',
      'nonWovenWallpapers': 'Укладка флизелиновых обоев',
      'designerWallpapers': 'Дизайнерские обои',
      'patternWallpapers': 'Узорные обои профессионально',
      'specialWallpapers': 'Специальные обои (текстура и т.д.)',
      'lawnMowingCare': 'Стрижка и уход за газоном',
      'hedgeTrimming': 'Стрижка живой изгороди',
      'plantingWork': 'Посадочные работы',
      'pathsTerraces': 'Строительство дорожек и террас',
      'smallRepairs': 'Мелкий ремонт',
      'winterService': 'Зимнее обслуживание',
      'greenSpaceCare': 'Уход за зелеными насаждениями',
      'emergencyService': 'Круглосуточный сервис',
      'electricalConnections': 'Электрические подключения',
      'waterConnections': 'Водопроводные подключения',
      'countertopCutting': 'Раскрой столешниц',
      'applianceInstallation': 'Установка бытовой техники',
      'builtinCabinets': 'Монтаж встроенных шкафов',
      'shelvesCabinets': 'Сборка полок и шкафов',
      'bedsMattresses': 'Сборка кроватей и матрасов',
      'gardenFurniture': 'Сборка садовой мебели',
      'sortingItems': 'Сортировка предметов',
      'usableItems': 'Использование пригодных предметов',
      'disposalUnusable': 'Утилизация непригодных предметов',
      'premisesCleaning': 'Уборка помещений',
      'customSolutions': 'Индивидуальные решения',
      'flexibleScheduling': 'Гибкое планирование',
      'individualOffers': 'Индивидуальные предложения',
      'specialOrders': 'Специальные заказы возможны',
      'onSiteConsultation': 'Консультация на месте',

      // RUSSIAN SEO KEYWORDS
      'seoUmzugKassel': 'Переезд Кассель - Профессиональные услуги переезда',
      'seoUmzugsunternehmen': 'Компания по переезду Кассель - Fix - Fair',
      'seoMoebeltransport': 'Перевозка мебели Кассель - Дешево и Надежно',
      'seoEntruempelung': 'Расхламление Кассель - Быстро и Недорого',
      'seoHaushaltsaufloesung':
          'Ликвидация домашнего хозяйства Кассель - Полный сервис',
      'seoMoebelmontage': 'Сборка мебели Кассель - Профессиональная сборка',
      'seoKuechenmontage': 'Сборка кухни Кассель - Профессиональный монтаж',
      'seoBueroUmzug': 'Офисный переезд Кассель - Бизнес услуги переезда',
      'seoSeniorenUmzug': 'Переезд пожилых Кассель - Заботливый сервис',
      'seoMoebelpacker':
          'Грузчики мебели Кассель - Опытные помощники по переезду',
      'seoGuenstigUmzug': 'Дешевый переезд Кассель - Лучшие цены',
      'seoProfessionellUmzug':
          'Профессиональные услуги переезда Северный Гессен',
      'seoUmzugMontage': 'Переезд с сборкой - Полный пакет',
      'seoEntsorgung': 'Утилизация Кассель - Экологичная утилизация',
      'seoRaeumung': 'Расчистка Кассель - Полные расчистки',
      'seoNordhessen': 'Переезд Северный Гессен \n Региональные услуги переезда',
      'seoUmzugsdienst': 'Услуги переезда Гессен - Услуги по всей стране',
      'seoMoebeltaxi': 'Мебельное такси Кассель - Малые перевозки',
      'seoTransporter': 'Аренда транспортера Кассель - Транспортные решения',
      'seoQualityService': 'Качественный переезд Кассель - Сервис Fix - Fair',
      'seoReliableMoving': 'Надежные услуги переезда Кассель',
    },
    'uk': {
      'appTitle': 'Fix - Fair',
      'servicesTitle': 'Наші послуги',
      'servicesSubtitle': 'Ваш партнер з надання послуг',
      'requestTitle': 'Безкоштовний запит пропозиції',
      'requestSubtitle': 'Надішліть нам необов\'язковий запит',
      'contactDetails': 'Контактні дані',
      'name': 'Ім\'я *',
      'email': 'Ел. пошта',
      'phone': 'Телефон *',
      'message': 'Повідомлення (необов\'язково)',
      'selectService': 'Виберіть послугу',
      'whatsappButton': 'Запитати через WhatsApp',
      'emailButton': 'Запитати по email',
      'whyTrust': 'Чому клієнти довіряють нам',
      'whyTrustSub': 'Професійні послуги за справедливими цінами',
      'satisfiedCustomers': 'Задоволені клієнти',
      'satisfiedCustomersSub': 'Переконайтеся в нашій роботі самі',
      'errorNamePhone': 'Будь ласка, введіть ім\'я та номер телефону',
      'errorRequiredFields': 'Будь ласка, заповніть всі обов\'язкові поля',
      'errorWhatsapp': 'Не вдалося відкрити WhatsApp',
      'errorEmail': 'Не вдалося відкрити email',
      'companyName': 'Fix - Fair',
      'address': 'Вулиця Квельхоф 26, 34127 Кассель',
      'contact': 'Контакт',
      'telephone': 'Тел: +49 176 12345678',
      'emailAddress': 'Email: Info@fix-fair.de',
      'imprint': 'Імпресум',
      'privacy': 'Конфіденційність',
      'terms': 'Умови використання',
      'copyright': '© 2024 Fix - Fair. Всі права захищені.',

      'privateMoves': 'Приватні переїзди',
      'officeMoves': 'Офісні переїзди',
      'seniorMoves': 'Переїзди для літніх людей',
      'kitchenAssembly': 'Збірка кухонь',
      'assemblies': 'Збірка меблів',
      'householdLiquidation': 'Ліквідація домогосподарств',
      'somethingelse': 'Інше',

      'privateMovesDesc': 'Безстресові переїзди для приватних домогосподарств',
      'officeMovesDesc': 'Переїзди для компаній та офісів',
      'seniorMovesDesc': 'Переїзди з особливою увагою',
      'kitchenAssemblyDesc': 'Професійна збірка вашої нової кухні',
      'assembliesDesc': 'Збірка меблів будь-якого типу',
      'householdLiquidationDesc': 'Ліквідація домогосподарств будь-якого типу',

      // Нові послуги
      'umzugsservice': 'Послуги переїзду',
      'entruempelung': 'Розхламлення',
      'trockenbau': 'Монтаж гіпсокартону',
      'abbruch': 'Демонтаж',
      'gebaeudereinigung': 'Прибирання будівель',
      'bodenleger': 'Укладання підлогових покриттів',
      'streichen': 'Фарбування',
      'tapezieren': 'Шпалери',
      'renovierung': 'Ремонт',
      'gartenarbeit': 'Садоводство',
      'hausmeisterservice': 'Послуги двірника',

      'umzugsserviceDesc':
          'Повний сервіс переїздів для приватних осіб та бізнесу',
      'entruempelungDesc': 'Професійне розхламлення та утилізація',
      'trockenbauDesc': 'Всі види робіт з гіпсокартоном',
      'abbruchDesc': 'Демонтажні та розбірні роботи',
      'gebaeudereinigungDesc': 'Комплексне прибирання будівель',
      'bodenlegerDesc': 'Укладання всіх видів підлогових покриттів',
      'streichenDesc': 'Малярні та фарбувальні роботи',
      'tapezierenDesc': 'Обклеювання шпалерами та дизайн стін',
      'renovierungDesc': 'Повні ремонтні роботи',
      'gartenarbeitDesc': 'Догляд за садом та ландшафтний дизайн',
      'hausmeisterserviceDesc': 'Комплексні послуги двірника',

      'moveInAddress': 'Адреса заселення *',
      'moveOutAddress': 'Адреса виселення *',
      'roomCount': 'Кількість кімнат *',
      'inspectionType': 'Тип огляду *',
      'personalData': 'Персональні дані',
      'moveData': 'Дані переїзду',
      'additionalInfo': 'Додаткова інформація',

      'settings': 'Налаштування',
      'darkMode': 'Темний режим',
      'language': 'Мова',
      'settingsSaved': 'Налаштування зберігаються автоматично',
      'darkModeEnabled': 'Темний режим увімкнено',
      'darkModeDisabled': 'Світлий режим увімкнено',
      'languageChanged': 'Мову змінено',

      'onlineInspection': 'Онлайн огляд',
      'onSiteInspection': 'Огляд на місці',
      'telefonischeBesprechung': 'Телефонна консультація',
      'videoCall': 'Відеодзвінок',
      'sonstigeBesichtigung': 'Інше',

      'rooms1-2': '1-2 кімнати',
      'rooms3-4': '3-4 кімнати',
      'rooms4-5': '4-5 кімнат',
      'rooms5plus': 'Понад 5 кімнат',

      'ourServices': 'Наші послуги',
      'contactForOffer': 'Зв\'яжіться з нами для пропозиції',

      'agbTitle': 'Загальні умови та положення',
      'datenschutzTitle': 'Політика конфіденційності',
      'impressumTitle': 'Імпресум',
      'addReviewTitle': 'Написати відгук',
      'trustDetailsTitle': 'Чому клієнти довіряють нам',
      'adminReviewsTitle': 'Керування відгуками',

      // AGB Page - Ukrainian
      'agbSection1': '§ 1 Сфера застосування',
      'agbContent1':
          '1. Ці Загальні умови та положення застосовуються до всіх договорів, укладених між Fix - Fair GmbH та клієнтом.',
      'agbSection2': '§ 2 Укладення договору',
      'agbContent2':
          '1. Подання послуг в Інтернеті не є юридично обов\'язковою пропозицією, а лише запрошенням зробити пропозицію.',
      'agbSection3': '§ 3 Ціни та умови оплати',
      'agbContent3':
          '1. Усі ціни вказані в євро та включають установлений законом ПДВ.',
      'agbSection4': '§ 4 Обсяг послуг та виконання',
      'agbContent4':
          '1. Обсяг надаваних послуг випливає з опису послуг у пропозиції.',
      'agbSection5': '§ 5 Право на відгук',
      'agbContent5':
          '1. Споживачі мають право на відгук протягом чотирнадцяти днів.',
      'agbSection6': '§ 6 Відповідальність',
      'agbContent6':
          '1. Відповідальність за легку недбалість виключена, якщо не порушені істотні договірні зобов\'язання.',
      'agbSection7': '§ 7 Заключні положення',
      'agbContent7':
          '1. Застосовується право Федеративної Республіки Німеччина.\n2. Місцем виконання є Кассель.\n3. Місцем юрисдикції є Кассель.',

      // Datenschutz Page - Ukrainian
      'privacySection1': '1. Захист даних в двох словах',
      'privacyContent1':
          'Загальна інформація\nНаступна інформація дає просте уявлення про те, що відбувається з вашими персональними даними при відвідуванні нашого веб-сайту. Персональні дані - це будь-які дані, за якими ви можете бути особисто ідентифіковані.',
      'privacySection2': '2. Загальна та обов\'язкова інформація',
      'privacyContent2':
          'Захист даних\nОператори цих сторінок дуже серйозно ставляться до захисту ваших персональних даних. Ми обробляємо ваші персональні дані конфіденційно та відповідно до правових положень про захист даних та цієї декларації про захист даних.',
      'privacySection3': '3. Збір даних на нашому веб-сайті',
      'privacyContent3':
          'Файли cookie\nВеб-сайти частково використовують так звані файли cookie. Файли cookie не завдають шкоди вашому комп\'ютеру та не містять вірусів. Файли cookie служать для того, щоб зробити нашу пропозицію зручнішою, ефективнішою та безпечнішою.',
      'privacySection4': '4. Інструменти аналізу та інструменти третіх сторін',
      'privacyContent4':
          'При відвідуванні нашого веб-сайту ваша поведінка при перегляді може бути статистично оцінена. Це робиться primarily за допомогою файлів cookie та так званих програм аналізу. Аналіз вашої поведінки при перегляді зазвичай анонімний; поведінку при перегляді не можна простежити back до вас.',
      'privacySection5': '5. Відповідальний орган',
      'privacyContent5':
          'Орган, відповідальний за обробку даних на цьому веб-сайті:\nFix - Fair\nВулиця Квельхоф 26\n34127 Кассель\nТелефон: +49 176 12345678\nEmail: Info@fix-fair.de',
      'privacySection6': '6. Відкликання вашої згоди на обробку даних',
      'privacyContent6':
          'Багато операцій з обробки даних можливі лише за вашої явної згоди. Ви можете відкликати вже надану згоду в будь-який час. Для цього достатньо неформального повідомлення нам по електронній пошті.',

      // Impressum Page - Ukrainian
      'imprintSection1': 'Інформація згідно § 5 TMG:',
      'imprintContent1': 'Fix - Fair\nВулиця Квельхоф 26\n34127 Кассель',
      'imprintSection2': 'Власник:',
      'imprintContent2':
          'Шехаде Айман\nДата народження: 10.01.1996\nМісце народження: Муадамія, Сирія',
      'imprintSection3': 'Контакт:',
      'imprintContent3':
          'Телефон: +49 176 12345678\nEmail: Info@fix-fair.de\nEmail: aymanshehadeh48@gmail.com\nВеб: www.fix-fair.de',
      'imprintSection4': 'Розробка:',
      'imprintContent4': 'Додаток розроблено Шехаде Айман',
      'imprintSection5': 'Ідентифікаційний номер ПДВ:',
      'imprintContent5':
          'Ідентифікаційний номер податку на додану вартість згідно §27a Закону про податок на додану вартість: DE123456789',
      'imprintSection6': 'Відповідальний за зміст згідно § 55 Abs. 2 RStV:',
      'imprintContent6': 'Шехаде Айман\nВулиця Квельхоф 26\n34127 Кассель',

      // Trust Details Page - Ukrainian
      'trustPoint1Title': 'Сертифікована якість',
      'trustPoint1Desc':
          'Усі наші послуги виконуються сертифікованими фахівцями та підлягають суворому контролю якості.',
      'trustPoint2Title': 'Справедливі ціни',
      'trustPoint2Desc':
          'Прозре ціноутворення без прихованих витрат. Ви завжди точно знаєте, за що платите.',
      'trustPoint3Title': 'Досвід',
      'trustPoint3Desc':
          'Понад 10 років досвіду в галузі з тисячами задоволених клієнтів.',
      'trustPoint4Title': 'Страхування',
      'trustPoint4Desc':
          'Повне страхування всіх послуг для максимальної безпеки та захисту вашої власності.',
      'trustPoint5Title': 'Підтримка 24/7',
      'trustPoint5Desc':
          'Цілодобова служба підтримки для всіх ваших питань та проблем.',
      'trustReadyTitle': 'Готові до переїзду?',
      'trustReadySubtitle':
          'Зв\'яжіться з нами сьогодні для отримання беззв\'язкового пропозиції!',
      'trustRequestButton': 'Запросити пропозицію зараз',

      // ... існуючі англійські переклади ...
      // НОВІ ПЕРЕКЛАДИ ДЛЯ СТОРІНКИ ДЕТАЛІВ КЛІЄНТА
      'googleReviews': 'Відгуки Google',
      'rateUsGoogle': 'Оцініть нас у Google',
      'rateDescription': 'Допоможіть іншим клієнтам у виборі',
      'rateNowButton': 'Оцініть нас на Google зараз',
      'supportEmail': 'Електронна пошта підтримки: support@fix-fair.de',
      'reviewPrompt': 'Поділіться своїм досвідом з нами',
      'customerTestimonials': 'Відгуки клієнтів',
      'satisfiedClients': 'Задоволені клієнти в Касселі',

      // НОВІ ПЕРЕКЛАДИ ДЛЯ ІМПРЕСУМУ
      'representedBy': 'Представляє:',
      'vatId': 'Номер ПДВ:',
      'vatInfo':
          'Ідентифікаційний номер ПДВ відповідно до §27a Закону про податок на додану вартість:',
      'disputeResolution': 'Розв’язання суперечок:',
      'disputeContent':
          'Європейська Комісія надає платформу для онлайн-рішення суперечок (OS)',
      'disputeNotParticipate':
          'Ми не готові і не зобов’язані брати участь у процедурах вирішення суперечок перед споживчим арбітражем.',
      'liabilityContent':
          'Як постачальник послуг, ми несемо відповідальність за власний контент на цих сторінках відповідно до загальних законів згідно з § 7 (1) Закону про телемедійні послуги Німеччини (TMG).',
      'copyrightInfo':
          'Контент і роботи, створені операторами сайту на цих сторінках, підлягають німецькому законодавству про авторське право.',
      'imageSources': 'Джерела зображень і іконок:',
      'animationTools': 'Анімації створені за допомогою Rive',
      'svgSources': 'SVG іконки від:',
      'graphicLicense':
          'Усі графічні елементи та іконки, що використовуються, доступні за вільними ліцензіями або були створені самостійно.',
      'freepik': 'Freepik',
      'svgRepo': 'SVG Repo',
      'legalInfo': 'Юридична інформація',
      'companyInfo': 'Інформація про компанію',

      // НОВІ ПЕРЕКЛАДИ ДЛЯ ПОЛІТИКИ КОНФІДЕНЦІЙНОСТІ
      'privacyOverview': 'Огляд захисту даних',
      'dataCollection': 'Збір даних на цьому сайті',
      'howWeCollect': 'Як ми збираємо ваші дані?',
      'dataUsage': 'Для чого ми використовуємо ваші дані?',
      'yourRights': 'Які права ви маєте щодо своїх даних?',
      'analyticsTools': 'Інструменти аналітики та сторонні інструменти',
      'hostingProvider': 'Хостинг',
      'generalInfo': 'Загальна інформація та обов’язкова інформація',
      'responsibleParty': 'Примітка щодо відповідальної сторони',
      'storageDuration': 'Тривалість зберігання',
      'revokeConsent': 'Відкликання вашої згоди на обробку даних',
      'objectionRight':
          'Право на заперечення проти збору даних у особливих випадках',
      'complaintRight':
          'Право подати скаргу до компетентного наглядового органу',
      'dataPortability': 'Право на переносимість даних',
      'sslEncryption': 'Шифрування SSL або TLS',
      'paymentEncryption': 'Зашифровані платіжні транзакції на цьому сайті',
      'dataSecurity': 'Безпека даних',
      'privacyPolicy': 'Політика конфіденційності',

      // Service Features
      'professionalEquipment': 'Професійне обладнання',
      'insuredTransport': 'Застраховані перевезення',
      'assemblyDisassembly': 'Збірка/розбирання меблів',
      'packagingIncluded': 'Упаковочні матеріали включено',
      'environmentalDisposal': 'Екологічна утилізація',
      'recyclingPossible': 'Переробка там, де можливо',
      'bulkyWasteRemoval': 'Вивезення великогабаритних відходів',
      'cleaningIncluded': 'Прибирання включено',
      'ceilingLinings': 'Стельові покриття',
      'soundproofingSolutions': 'Звукоізоляційні рішення',
      'fireProtectionMeasures': 'Заходи пожежної безпеки',
      'electricalPreparation': 'Електрична підготовка',
      'bathroomDismantling': 'Демонтаж ванної кімнати',
      'kitchenDismantling': 'Демонтаж кухні',
      'hazardousRemediation': 'Знешкодження небезпечних матеріалів',
      'materialDisposal': 'Утилізація всіх матеріалів',
      'windowCleaning': 'Мититя вікон',
      'carpetCleaning': 'Чистка килимів',
      'maintenanceCleaning': 'Підтримуюче прибирання',
      'specialCleaning': 'Спеціальне прибирання',
      'parquetLayingSanding': 'Укладання та шліфування паркету',
      'vinylFlooringLaying': 'Укладання вінілових підлог',
      'carpetLaying': 'Укладання килимів',
      'tileLaying': 'Укладання плитки',
      'wallpaperPreparation': 'Підготовка шпалер',
      'doorWindowPainting': 'Фарбування дверей та вікон',
      'radiatorPainting': 'Фарбування радіаторів',
      'facadeWork': 'Фасадні роботи',
      'nonWovenWallpapers': 'Укладання флізелінових шпалер',
      'designerWallpapers': 'Дизайнерські шпалери',
      'patternWallpapers': 'Візерункові шпалери професійно',
      'specialWallpapers': 'Спеціальні шпалери (текстура тощо)',
      'lawnMowingCare': 'Косіння та догляд за газоном',
      'hedgeTrimming': 'Стрижка живоплоту',
      'plantingWork': 'Посадкові роботи',
      'pathsTerraces': 'Будівництво доріжок та терас',
      'smallRepairs': 'Дрібний ремонт',
      'winterService': 'Зимове обслуговування',
      'greenSpaceCare': 'Догляд за зеленими насадженнями',
      'emergencyService': 'Цілодобовий сервіс',
      'electricalConnections': 'Електричні підключення',
      'waterConnections': 'Водопровідні підключення',
      'countertopCutting': 'Розкрій стільниць',
      'applianceInstallation': 'Встановлення побутової техніки',
      'builtinCabinets': 'Монтаж вбудованих шаф',
      'shelvesCabinets': 'Збірка полиць та шаф',
      'bedsMattresses': 'Збірка ліжок та матраців',
      'gardenFurniture': 'Збірка садових меблів',
      'sortingItems': 'Сортування предметів',
      'usableItems': 'Використання придатних предметів',
      'disposalUnusable': 'Утилізація непридатних предметів',
      'premisesCleaning': 'Прибирання приміщень',
      'customSolutions': 'Індивідуальні рішення',
      'flexibleScheduling': 'Гнучке планування',
      'individualOffers': 'Індивідуальні пропозиції',
      'specialOrders': 'Спеціальні замовлення можливі',
      'onSiteConsultation': 'Консультація на місці',

      // UKRAINIAN SEO KEYWORDS
      'seoUmzugKassel': 'Переїзд Кассель - Професійні послуги переїзду',
      'seoUmzugsunternehmen': 'Компанія з переїзду Кассель - Fix - Fair',
      'seoMoebeltransport': 'Перевезення меблів Кассель - Дешево та Надійно',
      'seoEntruempelung': 'Розхламлення Кассель - Швидко та Недорого',
      'seoHaushaltsaufloesung':
          'Ліквідація домогосподарства Кассель - Повний сервіс',
      'seoMoebelmontage': 'Збірка меблів Кассель - Професійна збірка',
      'uechenmontage': 'Збірка кухні Кассель - Професійний монтаж',
      'seoBueroUmzug': 'Офісний переїзд Кассель - Бізнес послуги переїзду',
      'seoSeniorenUmzug': 'Переїзд літніх Кассель - Турботливий сервіс',
      'seoMoebelpacker':
          'Вантажники меблів Кассель - Досвідчені помічники з переїзду',
      'seoGuenstigUmzug': 'Дешевий переїзд Кассель - Найкращі ціни',
      'seoProfessionellUmzug': 'Професійні послуги переїзду Північний Гессен',
      'seoUmzugMontage': 'Переїзд зі збіркою - Повний пакет',
      'seoEntsorgung': 'Утилізація Кассель - Екологічна утилізація',
      'seoRaeumung': 'Розчищення Кассель - Повні розчищення',
      'seoNordhessen':
          'Переїзд Північний Гессен \n Регіональні послуги переїзду',
      'seoUmzugsdienst': 'Послуги переїзду Гессен - Послуги по всій країні',
      'seoMoebeltaxi': 'Меблеве таксі Кассель - Малі перевезення',
      'seoTransporter': 'Оренда транспортера Кассель - Транспортні рішення',
      'seoQualityService': 'Якісний переїзд Кассель - Сервіс Fix - Fair',
      'seoReliableMoving': 'Надійні послуги переїзду Кассель',
    },
  };

  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  String _getText(String key) {
    return _localizedValues[locale.languageCode]?[key] ??
        _localizedValues['de']?[key] ??
        key;
  }

  String get appTitle => _getText('appTitle');

  String get servicesTitle => _getText('servicesTitle');

  String get servicesSubtitle => _getText('servicesSubtitle');

  String get requestTitle => _getText('requestTitle');

  String get requestSubtitle => _getText('requestSubtitle');

  String get contactDetails => _getText('contactDetails');

  String get name => _getText('name');

  String get email => _getText('email');

  String get phone => _getText('phone');

  String get message => _getText('message');

  String get selectService => _getText('selectService');

  String get whatsappButton => _getText('whatsappButton');

  String get emailButton => _getText('emailButton');

  String get whyTrust => _getText('whyTrust');

  String get whyTrustSub => _getText('whyTrustSub');

  String get satisfiedCustomers => _getText('satisfiedCustomers');

  String get satisfiedCustomersSub => _getText('satisfiedCustomersSub');

  String get errorNamePhone => _getText('errorNamePhone');

  String get errorRequiredFields => _getText('errorRequiredFields');

  String get errorWhatsapp => _getText('errorWhatsapp');

  String get errorEmail => _getText('errorEmail');

  String get companyName => _getText('companyName');

  String get address => _getText('address');

  String get contact => _getText('contact');

  String get telephone => _getText('telephone');

  String get emailAddress => _getText('emailAddress');

  String get imprint => _getText('imprint');

  String get privacy => _getText('privacy');

  String get terms => _getText('terms');

  String get copyright => _getText('copyright');

  String get kitchenAssembly => _getText('kitchenAssembly');

  String get privateMoves => _getText('privateMoves');

  String get officeMoves => _getText('officeMoves');

  String get seniorMoves => _getText('seniorMoves');

  String get assemblies => _getText('assemblies');

  String get householdLiquidation => _getText('householdLiquidation');

  String get renovation => _getText('renovation');

  String get caretaker => _getText('caretaker');

  String get cleaning => _getText('cleaning');

  String get movingStorage => _getText('movingStorage');

  String get somethingelse => _getText('somethingelse');

  String get kitchenAssemblyDesc => _getText('kitchenAssemblyDesc');

  String get privateMovesDesc => _getText('privateMovesDesc');

  String get officeMovesDesc => _getText('officeMovesDesc');

  String get seniorMovesDesc => _getText('seniorMovesDesc');

  String get assembliesDesc => _getText('assembliesDesc');

  String get householdLiquidationDesc => _getText('householdLiquidationDesc');

  String get renovationDesc => _getText('renovationDesc');

  String get caretakerDesc => _getText('caretakerDesc');

  String get cleaningDesc => _getText('cleaningDesc');

  String get movingStorageDesc => _getText('movingStorageDesc');

  String get moveInAddress => _getText('moveInAddress');

  String get moveOutAddress => _getText('moveOutAddress');

  String get roomCount => _getText('roomCount');

  String get inspectionType => _getText('inspectionType');

  String get personalData => _getText('personalData');

  String get moveData => _getText('moveData');

  String get additionalInfo => _getText('additionalInfo');

  String get settings => _getText('settings');

  String get darkMode => _getText('darkMode');

  String get language => _getText('language');

  String get settingsSaved => _getText('settingsSaved');

  String get darkModeEnabled => _getText('darkModeEnabled');

  String get darkModeDisabled => _getText('darkModeDisabled');

  String get languageChanged => _getText('languageChanged');

  String get onlineInspection => _getText('onlineInspection');

  String get onSiteInspection => _getText('onSiteInspection');

  String get rooms1_2 => _getText('rooms1-2');

  String get rooms3_4 => _getText('rooms3-4');

  String get rooms4_5 => _getText('rooms4-5');

  String get rooms5plus => _getText('rooms5plus');

  String get umzugsservice => _getText('umzugsservice');

  String get entruempelung => _getText('entruempelung');

  String get trockenbau => _getText('trockenbau');

  String get abbruch => _getText('abbruch');

  String get gebaeudereinigung => _getText('gebaeudereinigung');

  String get bodenleger => _getText('bodenleger');

  String get streichen => _getText('streichen');

  String get tapezieren => _getText('tapezieren');

  String get renovierung => _getText('renovierung');

  String get gartenarbeit => _getText('gartenarbeit');

  String get hausmeisterservice => _getText('hausmeisterservice');

  String get umzugsserviceDesc => _getText('umzugsserviceDesc');

  String get entruempelungDesc => _getText('entruempelungDesc');

  String get trockenbauDesc => _getText('trockenbauDesc');

  String get abbruchDesc => _getText('abbruchDesc');

  String get gebaeudereinigungDesc => _getText('gebaeudereinigungDesc');

  String get bodenlegerDesc => _getText('bodenlegerDesc');

  String get streichenDesc => _getText('streichenDesc');

  String get tapezierenDesc => _getText('tapezierenDesc');

  String get renovierungDesc => _getText('renovierungDesc');

  String get gartenarbeitDesc => _getText('gartenarbeitDesc');

  String get hausmeisterserviceDesc => _getText('hausmeisterserviceDesc');

  String get ourServices => _getText('ourServices');

  String get contactForOffer => _getText('contactForOffer');

  String get telefonischeBesprechung => _getText('telefonischeBesprechung');

  String get videoCall => _getText('videoCall');

  String get sonstigeBesichtigung => _getText('sonstigeBesichtigung');

  // Add these getter methods for the new translations
  String get agbTitle => _getText('agbTitle');

  String get datenschutzTitle => _getText('datenschutzTitle');

  String get impressumTitle => _getText('impressumTitle');

  String get addReviewTitle => _getText('addReviewTitle');

  String get trustDetailsTitle => _getText('trustDetailsTitle');

  String get adminReviewsTitle => _getText('adminReviewsTitle');

  // AGB Page
  String get agbSection1 => _getText('agbSection1');

  String get agbContent1 => _getText('agbContent1');

  String get agbSection2 => _getText('agbSection2');

  String get agbContent2 => _getText('agbContent2');

  String get agbSection3 => _getText('agbSection3');

  String get agbContent3 => _getText('agbContent3');

  String get agbSection4 => _getText('agbSection4');

  String get agbContent4 => _getText('agbContent4');

  String get agbSection5 => _getText('agbSection5');

  String get agbContent5 => _getText('agbContent5');

  String get agbSection6 => _getText('agbSection6');

  String get agbContent6 => _getText('agbContent6');

  String get agbSection7 => _getText('agbSection7');

  String get agbContent7 => _getText('agbContent7');

  // Datenschutz Page
  String get privacySection1 => _getText('privacySection1');

  String get privacyContent1 => _getText('privacyContent1');

  String get privacySection2 => _getText('privacySection2');

  String get privacyContent2 => _getText('privacyContent2');

  String get privacySection3 => _getText('privacySection3');

  String get privacyContent3 => _getText('privacyContent3');

  String get privacySection4 => _getText('privacySection4');

  String get privacyContent4 => _getText('privacyContent4');

  String get privacySection5 => _getText('privacySection5');

  String get privacyContent5 => _getText('privacyContent5');

  String get privacySection6 => _getText('privacySection6');

  String get privacyContent6 => _getText('privacyContent6');

  // Impressum Page
  String get imprintSection1 => _getText('imprintSection1');

  String get imprintContent1 => _getText('imprintContent1');

  String get imprintSection2 => _getText('imprintSection2');

  String get imprintContent2 => _getText('imprintContent2');

  String get imprintSection3 => _getText('imprintSection3');

  String get imprintContent3 => _getText('imprintContent3');

  String get imprintSection4 => _getText('imprintSection4');

  String get imprintContent4 => _getText('imprintContent4');

  String get imprintSection5 => _getText('imprintSection5');

  String get imprintContent5 => _getText('imprintContent5');

  String get imprintSection6 => _getText('imprintSection6');

  String get imprintContent6 => _getText('imprintContent6');


  // Trust Details Page
  String get trustPoint1Title => _getText('trustPoint1Title');

  String get trustPoint1Desc => _getText('trustPoint1Desc');

  String get trustPoint2Title => _getText('trustPoint2Title');

  String get trustPoint2Desc => _getText('trustPoint2Desc');

  String get trustPoint3Title => _getText('trustPoint3Title');

  String get trustPoint3Desc => _getText('trustPoint3Desc');

  String get trustPoint4Title => _getText('trustPoint4Title');

  String get trustPoint4Desc => _getText('trustPoint4Desc');

  String get trustPoint5Title => _getText('trustPoint5Title');

  String get trustPoint5Desc => _getText('trustPoint5Desc');

  String get trustReadyTitle => _getText('trustReadyTitle');

  String get trustReadySubtitle => _getText('trustReadySubtitle');

  String get trustRequestButton => _getText('trustRequestButton');


  // NEUE GETTER FÜR CUSTOMERS PAGE
  String get googleReviews => _getText('googleReviews');

  String get rateUsGoogle => _getText('rateUsGoogle');

  String get rateDescription => _getText('rateDescription');

  String get rateNowButton => _getText('rateNowButton');

  String get supportEmail => _getText('supportEmail');

  String get reviewPrompt => _getText('reviewPrompt');

  String get customerTestimonials => _getText('customerTestimonials');

  String get satisfiedClients => _getText('satisfiedClients');

  // NEUE GETTER FÜR IMPRESSUM
  String get representedBy => _getText('representedBy');

  String get vatId => _getText('vatId');

  String get vatInfo => _getText('vatInfo');

  String get disputeResolution => _getText('disputeResolution');

  String get disputeContent => _getText('disputeContent');

  String get disputeNotParticipate => _getText('disputeNotParticipate');

  String get liabilityContent => _getText('liabilityContent');

  String get copyrightInfo => _getText('copyrightInfo');

  String get imageSources => _getText('imageSources');

  String get animationTools => _getText('animationTools');

  String get svgSources => _getText('svgSources');

  String get graphicLicense => _getText('graphicLicense');

  String get freepik => _getText('freepik');

  String get svgRepo => _getText('svgRepo');

  String get legalInfo => _getText('legalInfo');

  String get companyInfo => _getText('companyInfo');

  // NEUE GETTER FÜR DATENSCHUTZ
  String get privacyOverview => _getText('privacyOverview');

  String get dataCollection => _getText('dataCollection');

  String get howWeCollect => _getText('howWeCollect');

  String get dataUsage => _getText('dataUsage');

  String get yourRights => _getText('yourRights');

  String get analyticsTools => _getText('analyticsTools');

  String get hostingProvider => _getText('hostingProvider');

  String get generalInfo => _getText('generalInfo');

  String get responsibleParty => _getText('responsibleParty');

  String get storageDuration => _getText('storageDuration');

  String get revokeConsent => _getText('revokeConsent');

  String get objectionRight => _getText('objectionRight');

  String get complaintRight => _getText('complaintRight');

  String get dataPortability => _getText('dataPortability');

  String get sslEncryption => _getText('sslEncryption');

  String get paymentEncryption => _getText('paymentEncryption');

  String get dataSecurity => _getText('dataSecurity');

  String get privacyPolicy => _getText('privacyPolicy');

  // Equipment & Transport
  String get professionalEquipment => _getText('professionalEquipment');

  String get insuredTransport => _getText('insuredTransport');

  String get assemblyDisassembly => _getText('assemblyDisassembly');

  String get packagingIncluded => _getText('packagingIncluded');

  // Entrümpelung
  String get environmentalDisposal => _getText('environmentalDisposal');

  String get recyclingPossible => _getText('recyclingPossible');

  String get bulkyWasteRemoval => _getText('bulkyWasteRemoval');

  String get cleaningIncluded => _getText('cleaningIncluded');

  // Trockenbau
  String get ceilingLinings => _getText('ceilingLinings');

  String get soundproofingSolutions => _getText('soundproofingSolutions');

  String get fireProtectionMeasures => _getText('fireProtectionMeasures');

  String get electricalPreparation => _getText('electricalPreparation');

  // Abbruch
  String get bathroomDismantling => _getText('bathroomDismantling');

  String get kitchenDismantling => _getText('kitchenDismantling');

  String get hazardousRemediation => _getText('hazardousRemediation');

  String get materialDisposal => _getText('materialDisposal');

  // Reinigung
  String get windowCleaning => _getText('windowCleaning');

  String get carpetCleaning => _getText('carpetCleaning');

  String get maintenanceCleaning => _getText('maintenanceCleaning');

  String get specialCleaning => _getText('specialCleaning');

  // Bodenleger
  String get parquetLayingSanding => _getText('parquetLayingSanding');

  String get vinylFlooringLaying => _getText('vinylFlooringLaying');

  String get carpetLaying => _getText('carpetLaying');

  String get tileLaying => _getText('tileLaying');

  // Streichen
  String get wallpaperPreparation => _getText('wallpaperPreparation');

  String get doorWindowPainting => _getText('doorWindowPainting');

  String get radiatorPainting => _getText('radiatorPainting');

  String get facadeWork => _getText('facadeWork');

  // Tapezieren
  String get nonWovenWallpapers => _getText('nonWovenWallpapers');

  String get designerWallpapers => _getText('designerWallpapers');

  String get patternWallpapers => _getText('patternWallpapers');

  String get specialWallpapers => _getText('specialWallpapers');

  // Gartenarbeit
  String get lawnMowingCare => _getText('lawnMowingCare');

  String get hedgeTrimming => _getText('hedgeTrimming');

  String get plantingWork => _getText('plantingWork');

  String get pathsTerraces => _getText('pathsTerraces');

  // Hausmeister
  String get smallRepairs => _getText('smallRepairs');

  String get winterService => _getText('winterService');

  String get greenSpaceCare => _getText('greenSpaceCare');

  String get emergencyService => _getText('emergencyService');

  // Küchenmontage
  String get electricalConnections => _getText('electricalConnections');

  String get waterConnections => _getText('waterConnections');

  String get countertopCutting => _getText('countertopCutting');

  String get applianceInstallation => _getText('applianceInstallation');

  // Möbelmontage
  String get builtinCabinets => _getText('builtinCabinets');

  String get shelvesCabinets => _getText('shelvesCabinets');

  String get bedsMattresses => _getText('bedsMattresses');

  String get gardenFurniture => _getText('gardenFurniture');

  // Haushaltsauflösung
  String get sortingItems => _getText('sortingItems');

  String get usableItems => _getText('usableItems');

  String get disposalUnusable => _getText('disposalUnusable');

  String get premisesCleaning => _getText('premisesCleaning');

  // Sonstiges
  String get customSolutions => _getText('customSolutions');

  String get flexibleScheduling => _getText('flexibleScheduling');

  String get individualOffers => _getText('individualOffers');

  String get specialOrders => _getText('specialOrders');

  String get onSiteConsultation => _getText('onSiteConsultation');

  // SEO KEYWORDS GETTER
  String get seoUmzugKassel => _getText('seoUmzugKassel');

  String get seoUmzugsunternehmen => _getText('seoUmzugsunternehmen');

  String get seoMoebeltransport => _getText('seoMoebeltransport');//

  String get seoEntruempelung => _getText('seoEntruempelung');

  String get seoHaushaltsaufloesung => _getText('seoHaushaltsaufloesung');

  String get seoMoebelmontage => _getText('seoMoebelmontage');

  String get seoKuechenmontage => _getText('seoKuechenmontage');

  String get seoBueroUmzug => _getText('seoBueroUmzug');

  String get seoSeniorenUmzug => _getText('seoSeniorenUmzug');

  String get seoMoebelpacker => _getText('seoMoebelpacker');//

  String get seoGuenstigUmzug => _getText('seoGuenstigUmzug');

  String get seoProfessionellUmzug => _getText('seoProfessionellUmzug');

  String get seoUmzugMontage => _getText('seoUmzugMontage');//

  String get seoEntsorgung => _getText('seoEntsorgung');//

  String get seoRaeumung => _getText('seoRaeumung');//

  String get seoNordhessen => _getText('seoNordhessen');

  String get seoUmzugsdienst => _getText('seoUmzugsdienst');//

  String get seoMoebeltaxi => _getText('seoMoebeltaxi');//

  String get seoTransporter => _getText('seoTransporter');//

  String get seoQualityService => _getText('seoQualityService');

  String get seoReliableMoving => _getText('seoReliableMoving');
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['de', 'en', 'ar', 'tr', 'ru', 'uk'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) {
    return false;
  }
}
