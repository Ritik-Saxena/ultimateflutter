import 'package:flutter/material.dart';
import 'package:hover_effect/hover_effect.dart'; // no null safety

void main() => runApp(HoverEffect());

class HoverEffect extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 300,
              child: HoverCard(
                builder: (context, hovering) {
                  return Container(
                    color: Colors.black,
                    child: Center(
                      child: Image.asset('assets/images/Logo_1.jpg'),
                    ),
                  );
                },
                depth: 10,
                depthColor: Colors.grey[400],
                onTap: () => print('Hello, World!'),
                shadow: BoxShadow(
                    color: Colors.pink,
                    blurRadius: 30,
                    spreadRadius: -20,
                    offset: Offset(0, 40)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
