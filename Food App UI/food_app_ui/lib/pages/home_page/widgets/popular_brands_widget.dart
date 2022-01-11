import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget popularBrandsWidget() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 52,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromRGBO(108, 114, 124, 1)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset('assets/images/pizza_hut.png'),
          ),
        ),
        const SizedBox(width: 18),
        Container(
          height: 52,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromRGBO(108, 114, 124, 1)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset('assets/images/kfc.png'),
          ),
        ),
        const SizedBox(width: 18),
        Container(
          height: 52,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromRGBO(108, 114, 124, 1)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset('assets/images/burger_king.png'),
          ),
        ),
        const SizedBox(width: 18),
        Container(
          height: 52,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromRGBO(108, 114, 124, 1)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/subway.png'),
          ),
        ),
        const SizedBox(width: 18),
        Container(
          height: 52,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromRGBO(108, 114, 124, 1)),
          ),
          child: Padding(
            padding: EdgeInsets.zero,
            child: Image.asset(
              'assets/images/dominos.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 18),
        Container(
          height: 52,
          width: 44,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(247, 247, 247, 1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromRGBO(108, 114, 124, 1)),
          ),
          child: IconButton(
            icon: SvgPicture.asset('assets/icons/arrow_forward.svg'),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
