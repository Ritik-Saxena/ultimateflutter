import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app_ui/bloc/bottom_nav_indicator/bottom_nav_indicator_bloc.dart';
import 'package:workout_app_ui/bloc/bottom_nav_indicator/bottom_nav_indicator_events.dart';
import 'package:workout_app_ui/bloc/bottom_nav_indicator/bottom_nav_indicator_states.dart';

Widget buildSmallText({
  required text,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 14,
}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.black,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

Widget buildMediumText({
  required text,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 16,
}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.black,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

Widget buildBigText({
  required text,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.bold,
  double fontSize = 20,
}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.black,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

Widget buildAppBar() {
  return Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Image.network(
            'https://randomuser.me/api/portraits/women/17.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(width: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildMediumText(text: 'Hello, Jade'),
          buildBigText(text: 'Ready to workout?'),
        ],
      ),
      const Spacer(),
      IconButton(
        onPressed: () {},
        icon: Stack(
          children: [
            SvgPicture.asset('assets/icons/notification.svg'),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(240, 68, 56, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildDataSetCard() {
  return Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color.fromRGBO(248, 249, 252, 1),
      // color: Colors.red,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildDataStats(
          iconPath: 'assets/icons/heart_rate.svg',
          title: 'Heart Rate',
          data: '81',
          dataUnit: 'BPM',
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          width: 1,
          color: const Color.fromRGBO(217, 217, 217, 1),
        ),
        buildDataStats(
          iconPath: 'assets/icons/todo.svg',
          title: 'To-do',
          data: '32,5',
          dataUnit: '%',
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          width: 1,
          color: const Color.fromRGBO(217, 217, 217, 1),
        ),
        buildDataStats(
          iconPath: 'assets/icons/calorie.svg',
          title: 'Calo',
          data: '1000',
          dataUnit: 'Cal',
        ),
      ],
    ),
  );
}

Widget buildDataStats({
  required String iconPath,
  required title,
  required String data,
  required String dataUnit,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath),
          const SizedBox(width: 2),
          buildSmallText(text: title),
        ],
      ),
      const SizedBox(height: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          buildBigText(text: data),
          const SizedBox(width: 2),
          buildMediumText(text: dataUnit, fontWeight: FontWeight.w500),
        ],
      )
    ],
  );
}

Widget buildTabBar(BuildContext context) {
  return DefaultTabController(
    length: 4,
    child: Expanded(
      child: Column(
        children: [
          TabBar(
            onTap: (value) {},
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            labelColor: const Color.fromRGBO(54, 63, 114, 1),
            indicatorColor: const Color.fromRGBO(54, 63, 114, 1),
            labelStyle: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
            unselectedLabelColor: const Color.fromRGBO(102, 112, 133, 1),
            overlayColor: MaterialStateProperty.all<Color>(
                Colors.transparent), // remove tab splash color when clicked
            tabs: const [
              Tab(text: 'All Type'),
              Tab(text: 'Full Body'),
              Tab(text: 'Upper'),
              Tab(text: 'Lower'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.47,
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      exerciseCard(
                        dayCount: 7,
                        execriseTitle: 'Morning Yoga',
                        exerciseDesc: 'Improve mental focus.',
                        duration: 30,
                        imageUrl: 'assets/images/yoga.png',
                      ),
                      exerciseCard(
                        dayCount: 3,
                        execriseTitle: 'Plank Exercise',
                        exerciseDesc: 'Improve posture and stability.',
                        duration: 30,
                        imageUrl: 'assets/images/plank.png',
                      ),
                      exerciseCard(
                        dayCount: 7,
                        execriseTitle: 'Morning Yoga',
                        exerciseDesc: 'Improve mental focus.',
                        duration: 30,
                        imageUrl: 'assets/images/yoga.png',
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: buildMediumText(text: 'Tab 2'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: buildMediumText(text: 'Tab 3'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: buildMediumText(text: 'Tab 4'),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget exerciseCard({
  required int dayCount,
  required String execriseTitle,
  required String exerciseDesc,
  required int duration,
  required String imageUrl,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 25),
    width: double.infinity,
    height: 180,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(248, 249, 252, 1),
        border: Border.all(color: const Color.fromRGBO(234, 236, 245, 1))),
    child: Row(
      children: [
        Container(
          width: 150,
          margin: const EdgeInsets.only(left: 16, top: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                alignment: Alignment.center,
                height: 35,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(228, 231, 236, 1),
                  ),
                ),
                child: buildSmallText(
                  text: '$dayCount days',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              buildBigText(text: execriseTitle),
              // const SizedBox(height: 5),
              buildSmallText(text: exerciseDesc, fontSize: 14),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Icon(Icons.access_time),
                  const SizedBox(width: 5),
                  buildSmallText(text: '$duration mins', fontSize: 14),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          // color: Colors.green,
          height: 150,
          width: 175,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.contain,
          ),
        ),
      ],
    ),
  );
}

Widget buildBottomNavigationBar(
  BuildContext context,
  TabIndicatorStates states,
) {
  return BottomNavigationBar(
    currentIndex: states.tabIndex,
    onTap: (value) {
      BlocProvider.of<TabIndicatorBloc>(context).add(TabIndicatorEvents(value));
    },
    type: BottomNavigationBarType.fixed,
    items: [
      _buildBottomNavigationBarItem(
          states: states, itemIndex: 0, iconName: 'home'),
      _buildBottomNavigationBarItem(
          states: states, itemIndex: 1, iconName: 'message'),
      _buildBottomNavigationBarItem(
          states: states, itemIndex: 2, iconName: 'stats'),
      _buildBottomNavigationBarItem(
          states: states, itemIndex: 3, iconName: 'profile'),
    ],
  );
}

BottomNavigationBarItem _buildBottomNavigationBarItem({
  required TabIndicatorStates states,
  required String iconName,
  required itemIndex,
}) {
  return BottomNavigationBarItem(
    label: '',
    icon: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          states.tabIndex == itemIndex
              ? SvgPicture.asset('assets/icons/${iconName}_selected.svg')
              : SvgPicture.asset('assets/icons/$iconName.svg'),
          if (states.tabIndex == itemIndex)
            Positioned(
              bottom: -15,
              child: Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(54, 63, 114, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
        ],
      ),
    ),
  );
}
