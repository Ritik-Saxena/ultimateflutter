import 'package:flutter/material.dart';
import 'package:food_app_ui/pages/home_page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      home: const HomePage(),
    );
  }
}
