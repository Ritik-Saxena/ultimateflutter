import 'package:flutter/material.dart';

class BackgroundPhotoCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo as BG'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(67, 47, 191, 1),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              backgroundPhotoCard1(),
              SizedBox(height: 20.0),
              backgroundPhotoCard2(),
              SizedBox(height: 20.0),
              backgroundPhotoCard3(),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}

// ##########################  backgroundPhotoCard1  ##########################
Widget backgroundPhotoCard1() {
  return Container(
    height: 200,
    width: 150,
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(237, 239, 240, 1),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ],
      image: DecorationImage(
        image: AssetImage(
          'assets/images/jazz.jpg',
        ),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.25),
          BlendMode.darken,
        ),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Jazz',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          '172 albums',
          style: TextStyle(
            color: Colors.grey[200],
            fontSize: 16,
            letterSpacing: -0.4,
          ),
        ),
        SizedBox(height: 20.0),
      ],
    ),
  );
}

// ##########################  backgroundPhotoCard2  ##########################
Widget backgroundPhotoCard2() {
  return Container(
    height: 120,
    width: 220,
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(237, 239, 240, 1),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ],
      image: DecorationImage(
        image: AssetImage(
          'assets/images/rock.jpg',
        ),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.25),
          BlendMode.darken,
        ),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rock',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '192 albums',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 16,
                letterSpacing: -0.4,
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    ),
  );
}

// ##########################  backgroundPhotoCard3  ##########################
Widget backgroundPhotoCard3() {
  return Container(
    height: 120,
    width: 220,
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(237, 239, 240, 1),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ],
      image: DecorationImage(
        image: AssetImage(
          'assets/images/rap.jpeg',
        ),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.pinkAccent.withOpacity(0.20),
          BlendMode.color,
        ),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rap',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '542 albums',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 16,
                letterSpacing: -0.4,
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    ),
  );
}
