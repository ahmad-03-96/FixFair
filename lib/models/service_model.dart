import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

class Service {
  final String id;
  final String Function(BuildContext) title;
  final String Function(BuildContext) description;
  final String imageAsset;
  final List<String> Function(BuildContext) features;

  Service({
    required this.id,
    required this.title,
    required this.description,
    required this.imageAsset,
    required this.features,
  });
}

// Service-Daten mit Übersetzungen
List<Service> getServices(BuildContext context) {
  final localizations = AppLocalizations.of(context);

  return [
    Service(
      id: 'umzugsservice',
      title: (context) => localizations.umzugsservice,
      description: (context) => localizations.umzugsserviceDesc,
      imageAsset: 'assets/animations/umzugsservice.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).umzugsserviceDesc.split('.')[0]}',
        '✓ Professionelles Equipment',
        '✓ Versicherter Transport',
        '✓ Montage/Demontage von Möbeln',
        '✓ Verpackungsmaterial inklusive',
      ],
    ),
    Service(
      id: 'entruempelung',
      title: (context) => localizations.entruempelung,
      description: (context) => localizations.entruempelungDesc,
      imageAsset: 'assets/animations/entruempelung.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).entruempelungDesc.split('.')[0]}',
        '✓ Umweltgerechte Entsorgung',
        '✓ Recycling wo möglich',
        '✓ Sperrmüllabtransport',
        '✓ Reinigung inklusive',
      ],
    ),
    Service(
      id: 'trockenbau',
      title: (context) => localizations.trockenbau,
      description: (context) => localizations.trockenbauDesc,
      imageAsset: 'assets/animations/trockenbau.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).trockenbauDesc.split('.')[0]}',
        '✓ Deckenverkleidungen',
        '✓ Schallschutz-Lösungen',
        '✓ Brandschutz-Maßnahmen',
        '✓ Elektroinstallation vorbereitet',
      ],
    ),
    Service(
      id: 'abbruch',
      title: (context) => localizations.abbruch,
      description: (context) => localizations.abbruchDesc,
      imageAsset: 'assets/animations/abbruch.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).abbruchDesc.split('.')[0]}',
        '✓ Badezimmer-Rückbau',
        '✓ Küchen-Demontage',
        '✓ Schadstoffsanierung',
        '✓ Entsorgung aller Materialien',
      ],
    ),
    Service(
      id: 'gebaeudereinigung',
      title: (context) => localizations.gebaeudereinigung,
      description: (context) => localizations.gebaeudereinigungDesc,
      imageAsset: 'assets/animations/gebaeudereinigung.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).gebaeudereinigungDesc.split('.')[0]}',
        '✓ Fensterreinigung',
        '✓ Teppichreinigung',
        '✓ Unterhaltsreinigung',
        '✓ Spezialreinigungen',
      ],
    ),
    Service(
      id: 'bodenleger',
      title: (context) => localizations.bodenleger,
      description: (context) => localizations.bodenlegerDesc,
      imageAsset: 'assets/animations/bodenleger.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).bodenlegerDesc.split('.')[0]}',
        '✓ Parkett verlegen & abschleifen',
        '✓ Vinyl-Böden verlegen',
        '✓ Teppichböden verlegen',
        '✓ Fliesen verlegen',
      ],
    ),
    Service(
      id: 'streichen',
      title: (context) => localizations.streichen,
      description: (context) => localizations.streichenDesc,
      imageAsset: 'assets/animations/streichen.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).streichenDesc.split('.')[0]}',
        '✓ Tapezierarbeiten vorbereiten',
        '✓ Lackieren von Türen & Fenstern',
        '✓ Heizkörper lackieren',
        '✓ Fassadenarbeiten',
      ],
    ),
    Service(
      id: 'tapezieren',
      title: (context) => localizations.tapezieren,
      description: (context) => localizations.tapezierenDesc,
      imageAsset: 'assets/animations/tapezieren.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).tapezierenDesc.split('.')[0]}',
        '✓ Vliestapeten verlegen',
        '✓ Designertapeten',
        '✓ Mustertapeten fachgerecht',
        '✓ Spezialtapeten (Struktur, etc.)',
      ],
    ),
    Service(
      id: 'gartenarbeit',
      title: (context) => localizations.gartenarbeit,
      description: (context) => localizations.gartenarbeitDesc,
      imageAsset: 'assets/animations/gartenarbeit.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).gartenarbeitDesc.split('.')[0]}',
        '✓ Rasen mähen & pflegen',
        '✓ Hecken schneiden',
        '✓ Pflanzarbeiten',
        '✓ Wege & Terrassen anlegen',
      ],
    ),
    Service(
      id: 'hausmeisterservice',
      title: (context) => localizations.hausmeisterservice,
      description: (context) => localizations.hausmeisterserviceDesc,
      imageAsset: 'assets/animations/hausmeisterservice.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).hausmeisterserviceDesc.split('.')[0]}',
        '✓ kleine Reparaturen',
        '✓ Winterdienst',
        '✓ Grünflächenpflege',
        '✓ Notdienst verfügbar',
      ],
    ),
    Service(
      id: 'kuechenmontage',
      title: (context) => localizations.kitchenAssembly,
      description: (context) => localizations.kitchenAssemblyDesc,
      imageAsset: 'assets/animations/kitchenAssembly.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).kitchenAssemblyDesc.split('.')[0]}',
        '✓ Elektroanschlüsse',
        '✓ Wasseranschlüsse',
        '✓ Arbeitsplatten zuschneiden',
        '✓ Einbau von Geräten',
      ],
    ),
    Service(
      id: 'moebelmontage',
      title: (context) => localizations.assemblies,
      description: (context) => localizations.assembliesDesc,
      imageAsset: 'assets/animations/assemblies.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).assembliesDesc.split('.')[0]}',
        '✓ Einbauschränke montieren',
        '✓ Regale und Schränke aufbauen',
        '✓ Betten und Matratzen montieren',
        '✓ Gartenmöbel aufbauen',
      ],
    ),
    Service(
      id: 'haushaltsaufloesung',
      title: (context) => localizations.householdLiquidation,
      description: (context) => localizations.householdLiquidationDesc,
      imageAsset: 'assets/animations/householdLiquidation.riv',
      features: (context) => [
        '✓ ${AppLocalizations.of(context).householdLiquidationDesc.split('.')[0]}',
        '✓ Sortierung der Gegenstände',
        '✓ Verwertung brauchbarer Items',
        '✓ Entsorgung nicht brauchbarer Items',
        '✓ Reinigung der Räumlichkeiten',
      ],
    ),
    Service(
      id: 'sonstiges',
      title: (context) => localizations.somethingelse,
      description: (context) =>
          'Individuelle Dienstleistungen nach Ihren speziellen Anforderungen.',
      imageAsset: 'assets/animations/somethingelse.riv',
      features: (context) => [
        '✓ Maßgeschneiderte Lösungen',
        '✓ Flexible Terminvereinbarung',
        '✓ Individuelle Angebote',
        '✓ Spezialaufträge möglich',
        '✓ Beratung vor Ort',
      ],
    ),
  ];
}
