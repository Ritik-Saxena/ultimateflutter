import 'package:flutter/material.dart';
import 'package:workout_app_ui/screens/home_screen/widgets/home_screen_widgets.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: buildBigText(text: 'Fourth screen')),
    );
  }
}
