import 'package:flutter/material.dart';
import 'package:carddesigns/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(CardDesigns());

class CardDesigns extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 1000.0,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
          ),
          items: [
            SimpleCards(),
            StandardCards(),
            BackgroundPhotoCard(),
            ButtonCards(),
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: i,
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
