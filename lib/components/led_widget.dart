import 'package:flutter/material.dart';

enum LedState { on, off }

class LedWidget extends StatelessWidget {
  //[modificador] tipo nome da variável atribuição ou não

  final double size;
  final LedState state;
  final Color onColor;
  final Color offColor;

  const LedWidget({
    super.key,
    //ff tem a ver com a transparência
    this.size = 200,
    this.state = LedState.off,
    this.onColor = const Color(0xffB6EBA5),
    this.offColor = const Color(0xff222327),
  }); // construtor

  @override
  Widget build(BuildContext context) {
    Color getColor(LedState state) => switch (state) {
          LedState.off => offColor,
          LedState.on => onColor,
        };

    //é transparente e admimensional (altura, largura e cor)
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: getColor(state),
      ),
    );
  }
}
