import 'package:flutter/material.dart';
import 'package:nintendo/components/action_buttom_widget.dart';
import 'package:nintendo/components/led_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // LedWidget(
          //   onColor: Colors.red,
          //   state: LedState.on,
          // ),
          ActionButtomWidget()
        ],
      ),
    );
  }
}
