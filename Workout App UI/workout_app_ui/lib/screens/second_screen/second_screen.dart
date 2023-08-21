import 'package:flutter/material.dart';
import 'package:workout_app_ui/screens/home_screen/widgets/home_screen_widgets.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: buildBigText(text: 'Second screen')),
    );
  }
}
