import 'package:flutter/material.dart';
import 'package:marvelui/pages/pages.dart';
import 'package:marvelui/config/routes/routes.dart';

void main() => runApp(MarvelUI());

class MarvelUI extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'CenturyGothic'),
      // home: SpiderManPage(),
      initialRoute: MarvelRoutes.spidermanPage,
      routes: {
        MarvelRoutes.spidermanPage: (context) => SpiderManPage(),
        MarvelRoutes.ironmanPage: (context) => IronManPage(),
        // MarvelRoutes.swipeCard: (context) => SwipeCardTest(),
        MarvelRoutes.swipeCard: (context) => MyApp(),
      },
    );
  }
}
