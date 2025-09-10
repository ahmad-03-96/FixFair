import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RiveAnimationLoad extends StatefulWidget {
  final VoidCallback? onTap;
  final double maxSize;
  final assets;
  final String stateMachineName;

  const RiveAnimationLoad({
    this.onTap,
    this.maxSize = 150,
    Key? key,
    this.assets = 'assets/animations/logo.riv',
    this.stateMachineName = 'State Machine 1',
  }) : super(key: key);

  @override
  _RiveLogoState createState() => _RiveLogoState();
}

class _RiveLogoState extends State<RiveAnimationLoad> {
  Artboard? _riveArtboard;
  RiveAnimationController? _controller;
  bool _animationPlaying = true;
  late StateMachineController? stateMachineController;

  @override
  void initState() {
    super.initState();
    _loadRiveAnimation();
  }

  Future<void> _loadRiveAnimation() async {
    try {
      final bytes = await rootBundle.load(widget.assets);
      final file = RiveFile.import(bytes);

      final artboard = file.mainArtboard;

      // Automatisch alle Animationen abspielen
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
      print('Fehler beim Laden der Rive Animation: $e');
    }
  }

  void _toggleAnimation() {
    setState(() {
      _animationPlaying = !_animationPlaying;
    });

    if (_controller != null) {
      if (_animationPlaying) {
        _controller?.isActive = true;
      } else {
        _controller?.isActive = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Responsive Größe basierend auf Bildschirmbreite
        final screenWidth = constraints.maxWidth;
        final animationSize = screenWidth > 600
            ? widget.maxSize *
            5 // Größer auf Tablets/Desktop
            : widget.maxSize * 4; // Standard auf Mobilgeräten

        return GestureDetector(
          onTap: widget.onTap ?? _toggleAnimation,
          onDoubleTap: _toggleAnimation,
          child: Container(
            width: animationSize * 7.5,
            height: animationSize * 0.25,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: _riveArtboard != null
                ? Rive(
              enablePointerEvents: true,
              artboard: _riveArtboard!,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            )
                : _buildPlaceholder(animationSize),
          ),
        );
      },
    );
  }

  Widget _buildPlaceholder(double size) {
    return Center(
      child: Icon(Icons.animation, size: size * 0.5, color: Colors.grey),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
