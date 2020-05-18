import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app_ui/util/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(title: 'Today', svgSource: 'assets/icons/calendar.svg',),
          BottomNavItem(title: 'All exercises', svgSource: 'assets/icons/gym.svg',isActive: true,),
          BottomNavItem(title: 'Settings', svgSource: 'assets/icons/Settings.svg',),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgSource;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key, this.svgSource, this.title, this.press, this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgSource, color: isActive ? kActiveIconColor : kTextColor,),
          Text(title, style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),)
        ],
      ),
    );
  }
}