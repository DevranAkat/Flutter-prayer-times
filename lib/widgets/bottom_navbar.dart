import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: const Color(0xffCD793C),
      unselectedItemColor: const Color(0xffffffff),
      backgroundColor: const Color(0xff222831),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'Location',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.of(context).pushNamedAndRemoveUntil('/location', (route) => false);
            // Navigator.pushNamed(context, '/location');
            break;
          case 1:
            Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
            // Navigator.pushNamed(context, '/');
            break;
          default:
        }
      },
    );
  }
}
