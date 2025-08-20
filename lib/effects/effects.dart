import 'package:flutter/material.dart';
maheshwari
/// Widget for a vertical reflection effect with gradient fade.
class ReflectionEffect extends StatelessWidget {
  final Widget child;
  final double opacity;
  final double fadeHeight;
krishna
  const ReflectionEffect({
    Key? key,
    required this.child,
    this.opacity = 0.4,
    this.fadeHeight = 1.0,
  }) : super(key: key);
          i love you mahi
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(opacity),
            Colors.transparent,
          ],
          stops: [0.0, fadeHeight],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationX(3.14159),
        child: child,
      ),
    );
  }
}
