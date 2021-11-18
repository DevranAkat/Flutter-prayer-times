import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navbar.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30475E),
      appBar: AppBar(
        title: Text("Location"),
      ),
      // title: "dd",
      // color: Colors.green,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
