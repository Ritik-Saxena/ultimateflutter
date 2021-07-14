import 'package:flutter/material.dart';
import 'package:carddesigns/utils/card_icons_icons.dart';

class SimpleCards extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Cards'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(67, 47, 191, 1),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              simpleCard1(),
              SizedBox(height: 10),
              simpleCard2(),
              SizedBox(height: 10),
              simpleCard3(),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}

//  ################### simpleCard1 ###################
Widget simpleCard1() {
  return Container(
    height: 220,
    width: 180,
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(237, 239, 240, 1),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ],
    ),
    child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Color.fromRGBO(230, 247, 255, 1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              CardIcons.laptop,
              size: 40,
              color: Color.fromRGBO(54, 156, 213, 1),
            ),
          ),
          SizedBox(height: 70),
          Text(
            'Technology',
            style: TextStyle(
              color: Color.fromRGBO(0, 38, 64, 1),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '182 products',
            style: TextStyle(
              // color: Colors.grey[500],
              color: Color.fromRGBO(130, 141, 148, 1),
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
  );
}

//  ################### simpleCard2 ###################
Widget simpleCard2() {
  return Container(
    height: 200,
    width: 170,
    margin: EdgeInsets.all(10.0), // for space outside the container border
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(237, 239, 240, 1),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ],
    ),
    child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 235, 227, 1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              CardIcons.user,
              size: 40,
              color: Colors.red[400],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Profile',
            style: TextStyle(
              color: Color.fromRGBO(0, 38, 64, 1),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '98 followers',
            style: TextStyle(
              // color: Colors.grey[500],
              color: Color.fromRGBO(130, 141, 148, 1),
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
  );
}

//  ################### simpleCard3 ###################
Widget simpleCard3() {
  return Container(
    height: 80,
    width: 300,
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(237, 239, 240, 1),
          blurRadius: 20,
          spreadRadius: 10,
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 243, 231, 1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              CardIcons.sun,
              size: 40.0,
              color: Color.fromRGBO(242, 197, 107, 1),
            ),
          ),
          SizedBox(width: 15.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sunny',
                style: TextStyle(
                  color: Color.fromRGBO(0, 38, 64, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Warm & Pleasant',
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
  );
}
