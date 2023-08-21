import 'package:flutter/material.dart';
import 'package:workout_app_ui/screens/home_screen/widgets/home_screen_widgets.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: buildBigText(text: 'Third screen')),
    );
  }
}
