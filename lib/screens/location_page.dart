import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navbar.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("AA"),),
      body: Center(child: FlutterLogo(),),
      // title: "dd",
      // color: Colors.green,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}