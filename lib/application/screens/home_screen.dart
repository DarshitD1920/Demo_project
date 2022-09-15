import 'package:demo_project/utility/color_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'browse_screen.dart';
import 'event_screen.dart';
import 'payment_screen.dart';
import 'schedule_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int tabSelectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    BrowseScreen(),
    EventScreen(),
    ScheduleScreen(),
    PaymentScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      tabSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(tabSelectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorWhite,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chart_bar_alt_fill),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.money_dollar_circle_fill),
            label: 'Payment',
          ),
        ],
        currentIndex: tabSelectedIndex,
        selectedItemColor: colorPrimary,
        unselectedItemColor: colorPrimary.withOpacity(0.5),
        onTap: onItemTapped,
      ),
    );
  }
}
