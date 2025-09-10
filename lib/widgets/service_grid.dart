import 'package:flutter/material.dart';

import '../models/service_model.dart';
import 'rive_placeholder.dart';

class ServiceGrid extends StatelessWidget {
  final Function(Service) onServiceSelected;

  const ServiceGrid({required this.onServiceSelected});

  @override
  Widget build(BuildContext context) {
    final services = getServices(context);

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 2200
            ? 4
            : MediaQuery.of(context).size.width > 1250
            ? 3
            : MediaQuery.of(context).size.width > 1050
            ? 2
            : MediaQuery.of(context).size.width > 750
            ? 2
            : 1,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: MediaQuery.of(context).size.width > 2200
            ? 1.25
            : MediaQuery.of(context).size.width > 1550
            ? 1.25
            : MediaQuery.of(context).size.width > 1250
            ? 1.1
            : MediaQuery.of(context).size.width > 1050
            ? 1.2
            : MediaQuery.of(context).size.width > 750
            ? 0.85
            : 1.5,
      ),
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];
        return GestureDetector(
          onTap: () => onServiceSelected(service),
          child: RivePlaceholder(
            stateMachineName: "State Machine 1",
            title: service.title(context),
            subtitle: service.description(context),

            animationAsset: service.imageAsset,
          ),
        );
      },
    );
  }
}
