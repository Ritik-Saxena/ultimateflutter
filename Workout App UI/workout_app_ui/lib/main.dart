import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_app_ui/bloc/bottom_nav_indicator/bottom_nav_indicator_bloc.dart';
import 'package:workout_app_ui/bloc/bottom_nav_indicator/bottom_nav_indicator_states.dart';
import 'package:workout_app_ui/screens/fourth_screen/fourth_screen.dart';
import 'package:workout_app_ui/screens/home_screen/home.dart';
import 'package:workout_app_ui/screens/home_screen/widgets/home_screen_widgets.dart';
import 'package:workout_app_ui/screens/second_screen/second_screen.dart';
import 'package:workout_app_ui/screens/third_screen/third_screen.dart';

void main() {
  runApp(WorkoutAppUI());
}

class WorkoutAppUI extends StatelessWidget {
  final screens = [
    const HomeScreen(),
    const SecondScreen(),
    const ThirdScreen(),
    const FourthScreen(),
  ];
  WorkoutAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabIndicatorBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        home: BlocBuilder<TabIndicatorBloc, TabIndicatorStates>(
          builder: (context, states) => Container(
            color: Colors.white,
            child: SafeArea(
              child: Scaffold(
                body: screens[states.tabIndex],
                bottomNavigationBar: buildBottomNavigationBar(context, states),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
