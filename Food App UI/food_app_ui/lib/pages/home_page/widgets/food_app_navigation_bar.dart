import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodAppBottomAppBar extends StatefulWidget {
  const FoodAppBottomAppBar({Key? key}) : super(key: key);

  @override
  _FoodAppBottomAppBarState createState() => _FoodAppBottomAppBarState();
}

class _FoodAppBottomAppBarState extends State<FoodAppBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          child: BottomAppBar(
            color: const Color.fromRGBO(46, 58, 89, 1),
            notchMargin: 2,
            shape: const CircularNotchedRectangle(),
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bottomAppBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/home.svg',
                      color: const Color.fromRGBO(255, 178, 84, 1),
                    ),
                    onPressed: () {},
                    text: 'Home',
                    textColor: const Color.fromRGBO(255, 178, 84, 1),
                  ),
                  bottomAppBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/discover.svg',
                    ),
                    onPressed: () {},
                    text: 'Discover',
                  ),
                  Opacity(
                    opacity: 0,
                    child: bottomAppBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/discover.svg',
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      text: 'Discover',
                    ),
                  ),
                  bottomAppBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/favourites.svg',
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    text: 'Favourites',
                  ),
                  bottomAppBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/settings.svg',
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    text: 'Settings',
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: const Color.fromRGBO(245, 71, 72, 1),
                  child: SvgPicture.asset('assets/icons/cart.svg'),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(235, 238, 204, 1),
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

Widget bottomAppBarItem(
    {required Widget icon,
    required onPressed,
    required String text,
    Color textColor = Colors.white}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Column(
      children: [
        IconButton(onPressed: onPressed, icon: icon),
        Text(
          text,
          style: TextStyle(fontSize: 12, height: 0.5, color: textColor),
        ),
      ],
    ),
  );
}
