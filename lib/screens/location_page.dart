import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_navbar.dart';

// import '../bottom_navbar.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30475E),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        )
        ),
        centerTitle: true,
        title: Text("Location"),
        backgroundColor: const Color(0xff222831),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
