import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatefulWidget {
  @override
  createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final defColor = Colors.black;
  final actColor = Colors.blueAccent;
  int _currentIndex = 0;

  final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      body: PageView(
//      ),
      body: Text('body'),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.white38,
          items: [
            _BottomNavigationBarItem('首页', Icons.home, 0),
            _BottomNavigationBarItem('搜索', Icons.search, 1),
            _BottomNavigationBarItem('旅行', Icons.camera_alt, 2),
            _BottomNavigationBarItem('我的', Icons.account_circle, 3)
          ]),
    );
  }

  _BottomNavigationBarItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: defColor,
        ),
        activeIcon: Icon(icon, color: actColor),
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ));
  }
}
