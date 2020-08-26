import 'package:four_in_one_clock/pages/ClockPage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:four_in_one_clock/pages/home_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'constants/User_Colors.dart';
import 'pages/AlarmPage.dart';
import 'pages/StopWatchPage.dart';
import 'pages/home_page.dart';

class Homepage extends StatefulWidget {
  final String title;
  Homepage({Key key, this.title}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _page = 1;
  GlobalKey _bottomNavigationKey = GlobalKey();
  List<Widget> pages = [AlarmPage(), ClockPage(), StopWatchPage(), HomePage()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

//    print("The time is: $now");
    return Scaffold(
      backgroundColor: Color(User_Colors().silver),
      body: pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 1,
        items: <Widget>[
          Icon(
            Icons.alarm,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            Icons.access_time,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            MdiIcons.timer,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            MdiIcons.weatherSunny,
            size: 27,
            color: Colors.white,
            )
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        backgroundColor: Color(User_Colors().silver),
        color: Color(User_Colors().purple),
        buttonBackgroundColor: Color(User_Colors().yellow),
      ),
    );
  }
}
