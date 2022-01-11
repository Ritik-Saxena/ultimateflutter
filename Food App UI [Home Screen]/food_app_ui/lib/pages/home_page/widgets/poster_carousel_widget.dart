import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FeaturedPosterCarousel extends StatefulWidget {
  const FeaturedPosterCarousel({key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<FeaturedPosterCarousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final imgList = [
    Image.asset('assets/images/poster.png'),
    Image.asset('assets/images/poster.png'),
    Image.asset('assets/images/poster.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: imgList,
          carouselController: _controller,
          options: CarouselOptions(
              // autoPlay: true,
              viewportFraction: 1.0,
              enlargeCenterPage: true,
              aspectRatio: 2,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (_current == entry.key
                    ? const Color.fromRGBO(222, 41, 57, 1)
                    : const Color.fromRGBO(218, 218, 218, 1)),
              ),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
