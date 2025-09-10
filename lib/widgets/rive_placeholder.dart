import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RivePlaceholder extends StatefulWidget {
  final String title;
  final String subtitle;
  final double height;
  final VoidCallback? onTap;
  final String? animationAsset;
  final String stateMachineName;

  const RivePlaceholder({
    required this.title,
    required this.subtitle,
    this.height = 250,
    this.onTap,
    this.animationAsset,
    required this.stateMachineName,
  });

  @override
  _RivePlaceholderState createState() => _RivePlaceholderState();
}

class _RivePlaceholderState extends State<RivePlaceholder> {
  bool _isHovered = false;
  Artboard? _riveArtboard;
  late StateMachineController? stateMachineController;

  @override
  void initState() {
    super.initState();
    _loadRiveAnimation();
  }

  Future<void> _loadRiveAnimation() async {
    if (widget.animationAsset != null) {
      try {
        final bytes = await rootBundle.load(widget.animationAsset!);
        final file = RiveFile.import(bytes);
        final artboard = file.mainArtboard;

        // Automatisch alle verfügbaren Animationen abspielen
        stateMachineController = StateMachineController.fromArtboard(
          artboard,
          widget.stateMachineName,
        )!;
        if (stateMachineController != null) {
          artboard.addController(stateMachineController!);
        } else {
          // Fallback: Idle-Animation falls keine spezifische Animation existiert
          artboard.addController(SimpleAnimation('idle'));
        }

        setState(() {
          _riveArtboard = artboard;
        });
      } catch (e) {
        print('Failed to load Rive animation: $e');
        // Fallback: Verwende Platzhalter wenn Animation nicht geladen werden kann
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Container(
                height: widget.height,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: _isHovered
                      ? [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 2,
                      offset: Offset(0, 6),
                    ),
                  ]
                      : [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                  border: _isHovered
                      ? Border.all(color: Colors.blue, width: 2)
                      : Border.all(color: Colors.grey[300]!, width: 1),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Animation Container mit festgelegter Höhe
                        Container(
                          height: widget.height * 0.5,
                          // 50% der Gesamthöhe für Animation
                          child: _riveArtboard != null
                              ? Rive(
                            enablePointerEvents: true,
                            artboard: _riveArtboard!,
                            fit: BoxFit.contain,
                          )
                              : _buildLoadingPlaceholder(), // Ladeanimation
                        ),
                        SizedBox(height: 12),

                        // Titel mit begrenzter Zeilenanzahl
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _isHovered ? Colors.blue : Colors.grey[800],
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        if (_isHovered) ...[
                          SizedBox(height: 8),
                          Text(
                            'Für Details anklicken',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Beschreibung mit begrenzter Zeilenanzahl
              Text(
                widget.subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingPlaceholder() {
    return CircularProgressIndicator(
      strokeWidth: 4,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Deine Wunschfarbe
    );
  }

  @override
  void didUpdateWidget(RivePlaceholder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.animationAsset != widget.animationAsset) {
      _loadRiveAnimation();
    }
  }
}
