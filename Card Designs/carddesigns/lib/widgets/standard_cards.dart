import 'dart:ui';

import 'package:carddesigns/utils/card_icons_icons.dart';
import 'package:flutter/material.dart';

class StandardCards extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Standard Cards'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(67, 47, 191, 1),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              standardCard1(),
              SizedBox(height: 10.0),
              standardCard2(),
              SizedBox(height: 10.0),
              standardCard3(),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}

// ##########################  standardCard1  ##########################
Widget standardCard1() {
  return Container(
    height: 230.0,
    width: 180.0,
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(237, 239, 240, 1),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ],
    ),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/forest_trip.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 18.0,
              right: 20.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    height: 40,
                    width: 38,
                    color: Colors.black.withOpacity(0.15),
                    child: Icon(
                      CardIcons.bookmark,
                      // color: Colors.grey[300],
                      color: Color.fromRGBO(188, 188, 186, 1),
                      size: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 80.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Container(
            width: 180,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forest trip',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 38, 64, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text.rich(
                    TextSpan(
                      text: 'from ',
                      style: TextStyle(
                        color: Color.fromRGBO(130, 141, 148, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        TextSpan(
                          text: '\$199 ',
                          style: TextStyle(
                            // color: Colors.grey[500],
                            color: Color.fromRGBO(130, 141, 148, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: '/ week',
                              style: TextStyle(
                                // color: Colors.grey[500],
                                color: Color.fromRGBO(130, 141, 148, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// ##########################  standardCard2  ##########################
Widget standardCard2() {
  return Container(
    height: 230.0,
    width: 300.0,
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(237, 239, 240, 1),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ],
    ),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/tropical_paradise.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 18.0,
              right: 20.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    height: 40,
                    width: 38,
                    color: Colors.black.withOpacity(0.15),
                    child: Icon(
                      CardIcons.bookmark,
                      color: Colors.grey[200],
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 80.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Container(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tropical paradise',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 38, 64, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'from ',
                          style: TextStyle(
                            color: Color.fromRGBO(130, 141, 148, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                          children: [
                            TextSpan(
                              text: '\$999 ',
                              style: TextStyle(
                                // color: Colors.grey[500],
                                color: Color.fromRGBO(130, 141, 148, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: '/ week',
                                  style: TextStyle(
                                    // color: Colors.grey[500],
                                    color: Color.fromRGBO(130, 141, 148, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 106.0),
                      Text(
                        '4.9',
                        style: TextStyle(
                          // color: Colors.grey[500],
                          color: Color.fromRGBO(0, 38, 64, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 3.0),
                      Icon(
                        CardIcons.star,
                        size: 13.0,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// ##########################  standardCard2  ##########################
Widget standardCard3() {
  return Container(
    height: 120,
    width: 300,
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(237, 239, 240, 1),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ],
    ),
    child: Row(
      // for image and text
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0)),
          child: Image.asset('assets/images/mountain_retreat.jpg'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            // for text, sub-text, rating & bookmark
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mountain retreat',
                style: TextStyle(
                  color: Color.fromRGBO(0, 38, 64, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2.0),
              Text.rich(
                TextSpan(
                  text: 'from ',
                  style: TextStyle(
                    color: Color.fromRGBO(130, 141, 148, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                      text: '\$899 ',
                      style: TextStyle(
                        // color: Colors.grey[500],
                        color: Color.fromRGBO(130, 141, 148, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '/ week',
                          style: TextStyle(
                            // color: Colors.grey[500],
                            color: Color.fromRGBO(130, 141, 148, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '4.9',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 38, 64, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: 3.0),
                  Icon(
                    CardIcons.star,
                    size: 13.0,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 121),
                  Icon(CardIcons.bookmark, size: 20.0, color: Colors.grey[400]),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
