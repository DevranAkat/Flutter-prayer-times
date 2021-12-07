import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  
 static const List<Color> colors = [Colors.blue, Colors.red, Colors.green];
 static int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: const Color(0xffffffff),
      backgroundColor: const Color(0xff222831),
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'Location',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      onTap: (int index) {
        currentIndex = index;
        switch (index) {
          case 0:
            Navigator.of(context).pushNamedAndRemoveUntil('/location', (route) => false);
            break;
          case 1:
            Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
            break;
          case 2:
            Navigator.of(context).pushNamedAndRemoveUntil('/settings', (route) => false);
            break;
          default:
        }
      },
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xffCD793C),
    );
  }
}