import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget exploreCardWidget(
    {required String image,
    required String outletName,
    required String foodName,
    required String price,
    required String rating,
    required String? deliveryTime,
    required bool isNonVeg,
    bool isDiscountAvailable = false,
    String? discount,
    bool isFreeDilvery = false}) {
  return Container(
    height: 140,
    width: 280,
    decoration: BoxDecoration(
      color: const Color.fromRGBO(247, 247, 247, 1),
      borderRadius: BorderRadius.circular(10),
      border:
          Border.all(width: 1, color: const Color.fromRGBO(119, 119, 119, 1)),
    ),
    child: Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            foodImage(image, isDiscountAvailable, discount),
            const SizedBox(width: 20),
            foodContent(
                outletName, foodName, price, rating, deliveryTime, isNonVeg),
          ],
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Visibility(
            visible: isFreeDilvery ? true : false,
            child: deliveryTag(),
          ),
        )
      ],
    ),
  );
}

Widget foodImage(image, isDiscountAvailable, discount) {
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 12),
        width: 100,
        height: 115,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              '$image',
            ),
          ),
        ),
      ),
      Visibility(
        visible: isDiscountAvailable ? true : false,
        child: Positioned(
          top: 3,
          right: 3,
          child: Container(
            height: 20,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                '$discount% Off',
                style: const TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget foodContent(
    outletName, foodName, price, rating, deliveryTime, isNonVeg) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        'By $outletName',
        style: const TextStyle(
          fontSize: 10,
          color: Color.fromRGBO(195, 132, 55, 1),
          letterSpacing: 0.2,
        ),
      ),
      const SizedBox(height: 5),
      Text(
        '$foodName',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(46, 58, 89, 1),
          letterSpacing: 0.5,
        ),
      ),
      const SizedBox(height: 5),
      Text(
        '₹ $price/-',
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(245, 71, 72, 1),
          letterSpacing: 0.5,
        ),
      ),
      const SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 27; i++)
            Container(
              width: 5,
              height: 1,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: i % 2 == 0
                        ? const Color.fromRGBO(214, 211, 211, 1)
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        children: [
          SvgPicture.asset('assets/icons/star.svg'),
          const SizedBox(width: 5),
          Text(
            '$rating',
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(width: 18),
          SvgPicture.asset('assets/icons/clock.svg'),
          const SizedBox(width: 5),
          Text(
            '$deliveryTime min',
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(width: 18),
          isNonVeg
              ? Image.asset('assets/images/non_veg_indicator.png')
              : Image.asset(
                  'assets/images/veg_indicator.png',
                  height: 12,
                  width: 12,
                ),
        ],
      ),
      const SizedBox(height: 10),
    ],
  );
}

Widget deliveryTag() {
  return Container(
    width: 80,
    height: 16,
    decoration: const BoxDecoration(
        color: Color.fromRGBO(245, 71, 72, 1),
        borderRadius: BorderRadius.only(topRight: Radius.circular(8))),
    child: const Center(
      child: Text(
        'Free Delivery',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.2,
        ),
      ),
    ),
  );
}
