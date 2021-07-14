import 'package:flutter/material.dart';

class ButtonCards extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards with Buttons'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(67, 47, 191, 1),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              buttonCard1(),
              SizedBox(height: 10.0),
              buttonCard2(),
              SizedBox(height: 10.0),
              buttonCard3(),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}

// ##########################  buttonCard1  ##########################
Widget buttonCard1() {
  return Container(
    height: 230,
    width: 150,
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
    child: Column(
      children: [
        SizedBox(height: 20),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              image: AssetImage('assets/images/profile_pic.png'),
            ),
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Michael F.',
          style: TextStyle(
            color: Color.fromRGBO(0, 38, 64, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          '82 followers',
          style: TextStyle(
            color: Color.fromRGBO(130, 141, 148, 1),
            fontSize: 16,
            letterSpacing: -0.2,
          ),
        ),
        SizedBox(height: 10.0),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.blue,
            minimumSize: Size(120, 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
          ),
          child: Text(
            'Follow',
            style: TextStyle(
              fontSize: 16,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  );
}

// ##########################  buttonCard2  ##########################
Widget buttonCard2() {
  return Container(
    height: 220,
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
        )
      ],
    ),
    child: Column(
      children: [
        Container(
          height: 140,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/music_lovers.jpg'),
              fit: BoxFit.fitWidth,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
        ),
        Container(
          height: 80,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Music lovers',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 38, 64, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '293 members',
                        style: TextStyle(
                          color: Color.fromRGBO(130, 141, 148, 1),
                          fontSize: 16,
                          letterSpacing: -0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(222, 241, 255, 1),
                    minimumSize: Size(80, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                  child: Text(
                    'View',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      letterSpacing: 0.2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

// ##########################  buttonCard3  ##########################
Widget buttonCard3() {
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
          child: Image.asset('assets/images/exercise.jpg'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            // for text, sub-text, rating & bookmark
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You were invited to',
                style: TextStyle(
                  color: Color.fromRGBO(130, 141, 148, 1),
                  fontSize: 15,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 2.0),
              Text(
                'Exercise freaks',
                style: TextStyle(
                  color: Color.fromRGBO(0, 38, 64, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(222, 241, 255, 1),
                      minimumSize: Size(65, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    child: Text(
                      'Join',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        letterSpacing: 0.2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(65, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    child: Text(
                      'Remove',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
