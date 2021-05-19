import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technocrats/constants.dart';

class BottomNavBar extends StatelessWidget {
  /*
  const BottomNavBar({

    Key key,
  }) : super(key: key);
  */
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            svgScr: "assets/icons/calendar.svg",
            press:(){},
          ),
          BottomNavItem(
            title: "All Exercises",
            svgScr: "assets/icons/gym.svg",
            press: (){},
            isActive: true,
          ),
          BottomNavItem(
            title: "Settings",
            svgScr: "assets/icons/Settings.svg",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    //Key key,
    this.svgScr ="assets/icon/Medication.svg",
    this.title = "title",
    required this.press,
    this.isActive = false,
  });// : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
