import 'package:flutter/material.dart';

class ActionButtomWidget extends StatelessWidget {
  const ActionButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 28,
      width: 28,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff7B8287),
            Color(0xff050F11),
          ],
        ),
      ),
      child: Container(
        height: 22,
        width: 22,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff050F11),
              Color(0xff7B8287),
            ],
          ),
        ),
      ),
    );
  }
}
