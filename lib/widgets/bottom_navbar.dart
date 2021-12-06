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
          activeIcon: Icon(
          Icons.home,
          // color: indexx == 0 ? Colors.red : Colors.blueGrey,
        ),
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
            // Navigator.pushNamed(context, '/location');
            break;
          case 1:
            Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
            // Navigator.pushNamed(context, '/');
            break;
          case 2:
          Navigator.of(context).pushNamedAndRemoveUntil('/settings', (route) => false);
          // Navigator.pushNamed(context, '/');
          break;
          default:
        }
      },
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xffCD793C),
    );
  }
}
