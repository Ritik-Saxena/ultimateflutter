import 'package:flutter/material.dart';
import 'package:workout_app_ui/screens/home_screen/widgets/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAppBar(),
          const SizedBox(height: 25),
          buildDataSetCard(),
          const SizedBox(height: 25),
          buildBigText(text: 'Workout Programs'),
          const SizedBox(height: 25),
          buildTabBar(context),
        ],
      ),
    );
  }
}
