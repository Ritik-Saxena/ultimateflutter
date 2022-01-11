import 'package:flutter/material.dart';
import 'package:food_app_ui/pages/home_page/widgets/appbar_widget.dart';
import 'package:food_app_ui/pages/home_page/widgets/explore_card_widget.dart';
import 'package:food_app_ui/pages/home_page/widgets/food_app_navigation_bar.dart';
import 'package:food_app_ui/pages/home_page/widgets/popular_brands_widget.dart';
import 'package:food_app_ui/pages/home_page/widgets/poster_carousel_widget.dart';
import 'package:food_app_ui/pages/home_page/widgets/search_filter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const EdgeInsets _symmetricPadding = EdgeInsets.symmetric(horizontal: 20.0);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: _symmetricPadding,
                child: appBarWidget(),
              ),
              const SizedBox(height: 35),
              Padding(
                padding: _symmetricPadding,
                child: searchFilterWidget(),
              ),
              const SizedBox(height: 35),
              const Padding(
                padding: _symmetricPadding,
                child: Text(
                  'Popular Brands',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              popularBrandsWidget(),
              const SizedBox(height: 35),
              const Padding(
                padding: _symmetricPadding,
                child: Text(
                  "Today's Featured",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
              const SizedBox(
                height: 200,
                width: 400,
                child: FeaturedPosterCarousel(),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: _symmetricPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.8,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(46, 58, 89, 1),
                            ),
                          ),
                        ),
                        child: const Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0.23,
                            color: Color.fromRGBO(46, 58, 89, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    exploreCardWidget(
                      image: 'assets/images/food_1.png',
                      outletName: 'Baba Biryani',
                      foodName: 'Chicken Biryani',
                      price: '250',
                      rating: '4.5',
                      deliveryTime: '30',
                      isNonVeg: true,
                      isDiscountAvailable: true,
                      discount: '10',
                      isFreeDilvery: true,
                    ),
                    const SizedBox(width: 20),
                    exploreCardWidget(
                      image: 'assets/images/food_2.png',
                      outletName: 'Dominos',
                      foodName: 'Cheese Pizza',
                      price: '550',
                      rating: '4.5',
                      deliveryTime: '45',
                      isNonVeg: false,
                      isDiscountAvailable: true,
                      discount: '15',
                      isFreeDilvery: true,
                    ),
                    const SizedBox(width: 20),
                    exploreCardWidget(
                      image: 'assets/images/food_3.png',
                      outletName: 'Burger King',
                      foodName: 'Veg Whopper',
                      price: '149',
                      rating: '4.5',
                      deliveryTime: '20',
                      isNonVeg: false,
                      isDiscountAvailable: false,
                      isFreeDilvery: true,
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const FoodAppBottomAppBar(),
    );
  }
}
