import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), label: "Calendar"),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Graphic"),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), label: "Users")
      ],
    );
  }
}
