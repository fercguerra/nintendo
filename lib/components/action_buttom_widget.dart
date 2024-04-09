import 'package:flutter/material.dart';

class ActionButtomWidget extends StatelessWidget {
  final double size;
  final Color backLayerColor01;
  final Color backLayerColor02;
  final AlignmentGeometry backLayerBegin;
  final AlignmentGeometry backLayerEnd;
  final Color frontLayerColor01;
  final Color frontLayerColor02;
  final AlignmentGeometry frontLayerBegin;
  final AlignmentGeometry frontLayerEnd;
  final Color arrowColor;
  final int quarterTurns;

  const ActionButtomWidget({
    super.key,
    this.size = 280,
    this.backLayerColor01 = const Color(0xff7B8287),
    this.backLayerColor02 = const Color(0xff050F11),
    this.backLayerBegin = Alignment.topCenter,
    this.backLayerEnd = Alignment.bottomCenter,
    this.frontLayerColor01 = const Color(0xff7B8287),
    this.frontLayerColor02 = const Color(0xff050F11),
    this.frontLayerBegin = Alignment.topCenter,
    this.frontLayerEnd = Alignment.bottomCenter,
    this.arrowColor = const Color(0xFF000000),
    this.quarterTurns = 0,
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
          begin: backLayerBegin,
          end: backLayerEnd,
          colors: [backLayerColor01, backLayerColor02],
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        height: size * 0.8,
        width: size * 0.8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: frontLayerBegin,
            end: frontLayerEnd,
            colors: [
              frontLayerColor01,
              frontLayerColor02,
            ],
          ),
        ),
        child: RotatedBox(
          quarterTurns: quarterTurns,
          child: CustomPaint(
            size: Size(size * 0.32, size * 0.32),
            painter: ArrowPainter(),
          ),
        ),
      ),
    );
  }
}

class ArrowPainter extends CustomPainter {
  final Color color;

  ArrowPainter({
    super.repaint,
    this.color = const Color(0xff0000000),
  });
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      //operador cascade
      ..color = color; // alterar // por padrão é preto

    final path = Path()
      ..moveTo(0, size.height * 0.77) //ponto esquerda inferior
      ..lineTo(size.width * 0.5, 0.0)
      ..lineTo(size.width, size.height * 0.77);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
