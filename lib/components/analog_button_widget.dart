import 'package:flutter/material.dart';

class AnalogButtonWidget extends StatelessWidget {
  final double size;
  final Color border;
  final AlignmentGeometry backLayer01;
  final AlignmentGeometry backLayer02;
  final AlignmentGeometry midleLayer01;
  final AlignmentGeometry midleLayer02;
  final Color layerColor01;
  final Color layerColor02;
  final Color topLayer01;
  final Color topLayer02;

  const AnalogButtonWidget({
    super.key,
    this.size = 200,
    this.border = const Color(0xFF000000),
    this.backLayer01 = Alignment.topCenter,
    this.backLayer02 = Alignment.bottomCenter,
    this.midleLayer01 = Alignment.bottomLeft,
    this.midleLayer02 = Alignment.topRight,
    this.layerColor01 = const Color(0xFF686D70),
    this.layerColor02 = const Color(0xFF050F11),
    this.topLayer01 = const Color(0xFF676A6F),
    this.topLayer02 = const Color(0xFF242625),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            layerColor01,
            layerColor02,
          ],
          begin: backLayer01,
          end: backLayer02,
        ),
      ),
    );
  }
}
