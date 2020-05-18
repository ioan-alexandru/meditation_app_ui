import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app_ui/util/constants.dart';
import 'package:meditation_app_ui/widgets/bottom_nav_bar.dart';
import 'package:meditation_app_ui/widgets/search_bar.dart';
import 'package:meditation_app_ui/widgets/session_card.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                  image: AssetImage('assets/images/meditation_bg.png'),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '3-10 MIN Course',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Text(
                        'Live happier and healthier by learning the fundamentals of meditation and mindfulness'),
                  ),
                  SizedBox(
                    child: SearchBar(),
                    width: MediaQuery.of(context).size.width * .6,
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 10,
                    children: <Widget>[
                      SessionCard(
                        sessionNumber: 1,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 2,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 3,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 4,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 5,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 6,
                        press: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: kShadowColor)
                          ]),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset('assets/icons/Meditation_women_small.svg'),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Basic 2', style: Theme.of(context).textTheme.subtitle2,),
                                Text('Start your journey today')
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

