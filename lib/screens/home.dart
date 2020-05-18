import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app_ui/widgets/card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
                color: Color(0xFFF5CEB9),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                )),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2BEA1), shape: BoxShape.circle),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'Good Morning \nIoan',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 38, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          icon: SvgPicture.asset('assets/icons/search.svg'),
                          border: InputBorder.none),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Diet Recommendation",
                          svgSource: "assets/icons/Hamburger.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Kegel Exercises",
                          svgSource: "assets/icons/Exercises.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Meditation",
                          svgSource: "assets/icons/Meditation.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Yoga",
                          svgSource: "assets/icons/yoga.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
