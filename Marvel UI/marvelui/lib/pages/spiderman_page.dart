import 'package:flutter/material.dart';
import 'package:marvelui/config/size_config.dart';
import 'package:marvelui/config/routes/routes.dart';

class SpiderManPage extends StatefulWidget {
  _SpiderManPageState createState() => _SpiderManPageState();
}

class _SpiderManPageState extends State<SpiderManPage> {
  final imageUrl = 'assets/images/spiderman.png';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Padding(
            padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 10),
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Color.fromRGBO(41, 37, 39, 1),
              size: SizeConfig.blockSizeHorizontal * 5,
            ),
          ),
          onTap: () {},
        ),
        title: Text(
          'movies',
          style: TextStyle(
            color: Color.fromRGBO(41, 37, 39, 1),
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
            fontSize: SizeConfig.blockSizeHorizontal * 8,
          ),
        ),
        backgroundColor: Color.fromRGBO(254, 252, 255, 1),
        centerTitle: true,
        elevation: 0,
      ),
      body: GestureDetector(
        onHorizontalDragUpdate: (DragUpdateDetails value) {
          if (value.delta.dx < 0) {
            // swipe left, finger goes towards left side (which means going towards -ve axis on co-ordinates)
            // print('swipe left');
            Navigator.pushNamed(context, MarvelRoutes.ironmanPage);
          } else if (value.delta.dx > 0) {
            // swipe right, finger goes towards right side (which means going towards +ve axis on co-ordinates)
            // print('swipe right');
            Navigator.pushNamed(context, MarvelRoutes.ironmanPage);
          }
        },
        // onHorizontalDragStart: (value) {
        //   print('Horizontal drag start');
        // },
        child: Container(
          height: SizeConfig.blockSizeVertical * 100,
          width: SizeConfig.blockSizeHorizontal * 100,
          color: Color.fromRGBO(254, 252, 255, 1),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  height: SizeConfig.blockSizeVertical * 70,
                  width: SizeConfig.blockSizeHorizontal * 66,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 241, 243, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: SizeConfig.blockSizeVertical * 67,
                  width: SizeConfig.blockSizeHorizontal * 82,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 230, 232, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: SizeConfig.blockSizeVertical * 64,
                  width: SizeConfig.blockSizeHorizontal * 100,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(191, 25, 37, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: (SizeConfig.blockSizeVertical * 5),
                child: Image.asset(
                  imageUrl,
                  width: SizeConfig.blockSizeHorizontal * 110,
                  height: SizeConfig.blockSizeVertical * 110,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: SizeConfig.blockSizeHorizontal * 100,
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'spider',
                        style: TextStyle(
                          color: Color.fromRGBO(233, 230, 232, 1),
                          fontSize: SizeConfig.blockSizeHorizontal * 18,
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                      Text(
                        'man',
                        style: TextStyle(
                          color: Color.fromRGBO(233, 230, 232, 1),
                          fontSize: SizeConfig.blockSizeHorizontal * 18,
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 1.5),
                      Text(
                        'peter parker',
                        style: TextStyle(
                          color: Color.fromRGBO(233, 230, 232, 1),
                          fontSize: SizeConfig.blockSizeHorizontal * 6.5,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),
                      GestureDetector(
                        onTap: () {
                          print('world');
                        },
                        child: Text.rich(
                          TextSpan(
                              text: 'know more ',
                              style: TextStyle(
                                color: Color.fromRGBO(230, 169, 76, 1),
                                fontSize: SizeConfig.blockSizeHorizontal * 5,
                              ),
                              children: [
                                TextSpan(
                                  text: '\u{2192}',
                                  style: TextStyle(
                                    color: Color.fromRGBO(230, 169, 76, 1),
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 7,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
