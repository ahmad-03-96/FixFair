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
        '✓ ${localizations.umzugsserviceDesc.split('.')[0]}',
        '✓ ${localizations.professionalEquipment}',
        '✓ ${localizations.insuredTransport}',
        '✓ ${localizations.assemblyDisassembly}',
        '✓ ${localizations.packagingIncluded}',
      ],
    ),
    Service(
      id: 'entruempelung',
      title: (context) => localizations.entruempelung,
      description: (context) => localizations.entruempelungDesc,
      imageAsset: 'assets/animations/entruempelung.riv',
      features: (context) => [
        '✓ ${localizations.entruempelungDesc.split('.')[0]}',
        '✓ ${localizations.environmentalDisposal}',
        '✓ ${localizations.recyclingPossible}',
        '✓ ${localizations.bulkyWasteRemoval}',
        '✓ ${localizations.cleaningIncluded}',
      ],
    ),
    Service(
      id: 'trockenbau',
      title: (context) => localizations.trockenbau,
      description: (context) => localizations.trockenbauDesc,
      imageAsset: 'assets/animations/trockenbau.riv',
      features: (context) => [
        '✓ ${localizations.trockenbauDesc.split('.')[0]}',
        '✓ ${localizations.ceilingLinings}',
        '✓ ${localizations.soundproofingSolutions}',
        '✓ ${localizations.fireProtectionMeasures}',
        '✓ ${localizations.electricalPreparation}',
      ],
    ),
    Service(
      id: 'abbruch',
      title: (context) => localizations.abbruch,
      description: (context) => localizations.abbruchDesc,
      imageAsset: 'assets/animations/abbruch.riv',
      features: (context) => [
        '✓ ${localizations.abbruchDesc.split('.')[0]}',
        '✓ ${localizations.bathroomDismantling}',
        '✓ ${localizations.kitchenDismantling}',
        '✓ ${localizations.hazardousRemediation}',
        '✓ ${localizations.materialDisposal}',
      ],
    ),
    Service(
      id: 'gebaeudereinigung',
      title: (context) => localizations.gebaeudereinigung,
      description: (context) => localizations.gebaeudereinigungDesc,
      imageAsset: 'assets/animations/gebaeudereinigung.riv',
      features: (context) => [
        '✓ ${localizations.gebaeudereinigungDesc.split('.')[0]}',
        '✓ ${localizations.windowCleaning}',
        '✓ ${localizations.carpetCleaning}',
        '✓ ${localizations.maintenanceCleaning}',
        '✓ ${localizations.specialCleaning}',
      ],
    ),
    Service(
      id: 'bodenleger',
      title: (context) => localizations.bodenleger,
      description: (context) => localizations.bodenlegerDesc,
      imageAsset: 'assets/animations/bodenleger.riv',
      features: (context) => [
        '✓ ${localizations.bodenlegerDesc.split('.')[0]}',
        '✓ ${localizations.parquetLayingSanding}',
        '✓ ${localizations.vinylFlooringLaying}',
        '✓ ${localizations.carpetLaying}',
        '✓ ${localizations.tileLaying}',
      ],
    ),
    Service(
      id: 'streichen',
      title: (context) => localizations.streichen,
      description: (context) => localizations.streichenDesc,
      imageAsset: 'assets/animations/streichen.riv',
      features: (context) => [
        '✓ ${localizations.streichenDesc.split('.')[0]}',
        '✓ ${localizations.wallpaperPreparation}',
        '✓ ${localizations.doorWindowPainting}',
        '✓ ${localizations.radiatorPainting}',
        '✓ ${localizations.facadeWork}',
      ],
    ),
    Service(
      id: 'tapezieren',
      title: (context) => localizations.tapezieren,
      description: (context) => localizations.tapezierenDesc,
      imageAsset: 'assets/animations/tapezieren.riv',
      features: (context) => [
        '✓ ${localizations.tapezierenDesc.split('.')[0]}',
        '✓ ${localizations.nonWovenWallpapers}',
        '✓ ${localizations.designerWallpapers}',
        '✓ ${localizations.patternWallpapers}',
        '✓ ${localizations.specialWallpapers}',
      ],
    ),
    Service(
      id: 'gartenarbeit',
      title: (context) => localizations.gartenarbeit,
      description: (context) => localizations.gartenarbeitDesc,
      imageAsset: 'assets/animations/gartenarbeit.riv',
      features: (context) => [
        '✓ ${localizations.gartenarbeitDesc.split('.')[0]}',
        '✓ ${localizations.lawnMowingCare}',
        '✓ ${localizations.hedgeTrimming}',
        '✓ ${localizations.plantingWork}',
        '✓ ${localizations.pathsTerraces}',
      ],
    ),
    Service(
      id: 'hausmeisterservice',
      title: (context) => localizations.hausmeisterservice,
      description: (context) => localizations.hausmeisterserviceDesc,
      imageAsset: 'assets/animations/hausmeisterservice.riv',
      features: (context) => [
        '✓ ${localizations.hausmeisterserviceDesc.split('.')[0]}',
        '✓ ${localizations.smallRepairs}',
        '✓ ${localizations.winterService}',
        '✓ ${localizations.greenSpaceCare}',
        '✓ ${localizations.emergencyService}',
      ],
    ),
    Service(
      id: 'kuechenmontage',
      title: (context) => localizations.kitchenAssembly,
      description: (context) => localizations.kitchenAssemblyDesc,
      imageAsset: 'assets/animations/kitchenAssembly.riv',
      features: (context) => [
        '✓ ${localizations.kitchenAssemblyDesc.split('.')[0]}',
        '✓ ${localizations.electricalConnections}',
        '✓ ${localizations.waterConnections}',
        '✓ ${localizations.countertopCutting}',
        '✓ ${localizations.applianceInstallation}',
      ],
    ),
    Service(
      id: 'moebelmontage',
      title: (context) => localizations.assemblies,
      description: (context) => localizations.assembliesDesc,
      imageAsset: 'assets/animations/assemblies.riv',
      features: (context) => [
        '✓ ${localizations.assembliesDesc.split('.')[0]}',
        '✓ ${localizations.builtinCabinets}',
        '✓ ${localizations.shelvesCabinets}',
        '✓ ${localizations.bedsMattresses}',
        '✓ ${localizations.gardenFurniture}',
      ],
    ),
    Service(
      id: 'haushaltsaufloesung',
      title: (context) => localizations.householdLiquidation,
      description: (context) => localizations.householdLiquidationDesc,
      imageAsset: 'assets/animations/householdLiquidation.riv',
      features: (context) => [
        '✓ ${localizations.householdLiquidationDesc.split('.')[0]}',
        '✓ ${localizations.sortingItems}',
        '✓ ${localizations.usableItems}',
        '✓ ${localizations.disposalUnusable}',
        '✓ ${localizations.premisesCleaning}',
      ],
    ),
    Service(
      id: 'sonstiges',
      title: (context) => localizations.somethingelse,
      description: (context) => 'Individuelle Dienstleistungen nach Ihren speziellen Anforderungen.',
      imageAsset: 'assets/animations/somethingelse.riv',
      features: (context) => [
        '✓ ${localizations.customSolutions}',
        '✓ ${localizations.flexibleScheduling}',
        '✓ ${localizations.individualOffers}',
        '✓ ${localizations.specialOrders}',
        '✓ ${localizations.onSiteConsultation}',
      ],
    ),
  ];
}