

import 'package:flutter/material.dart';
import 'package:gojek/constant.dart';
import 'package:gojek/home/HomePage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: new Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.assignment,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.assignment,
              color: Colors.grey,
            ),
            title: new Text(
              'Order',
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.message,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.message,
              color: Colors.grey,
            ),
            title: new Text(
              'Inbox',
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            title: new Text(
              'Account',
            ),
          )

        ]);
  }
}