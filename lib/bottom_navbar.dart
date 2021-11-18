import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_page.dart';
import 'package:flutter_app/screens/location_page.dart';

class BottomNavBar extends StatefulWidget{
  @override
  _BottomNavBar createState() => _BottomNavBar();
}
  class _BottomNavBar extends State<BottomNavBar>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30475E),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color(0xffCD793C),
        unselectedItemColor: const Color(0xffffffff),
        backgroundColor: const Color(0xff222831),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Locationn',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
        onTap: (int index){
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
              case 1:
              Navigator.pushNamed(context, '/location');
              break;
            default:
          }
        },
      ),
    );
  }
}