import 'package:flutter/material.dart';
import 'Dart:ui'; // required for ImageFilter

void main() => runApp(GlassmorphismCard());

class GlassmorphismCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[900],
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: ClipRRect(
              // to get blur effect on card instead of background
              child: BackdropFilter(
                filter:
                    ImageFilter.blur(sigmaX: 16, sigmaY: 16), // for blur effect
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/pizza.png',
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Pepperoni Pizza',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Pepperoni, Extra Cheese',
                          style: TextStyle(
                            color: Colors.blue[50],
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: [
                            Text(
                              '\$8.99',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 130),
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Icon(Icons.remove,
                                  color: Colors.grey[400], size: 18),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '1',
                              style: TextStyle(
                                color: Colors.blue[50],
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Icon(Icons.add,
                                  color: Colors.grey[700], size: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
