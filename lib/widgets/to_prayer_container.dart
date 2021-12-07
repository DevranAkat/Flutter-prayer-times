import 'package:flutter/material.dart';

class ToPrayerContainer extends StatelessWidget {
  final String prayer = "Sabah";
  final String timeLeft = " namazına kalan süre:";
  
  const ToPrayerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(color: Color(0xff222831), borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          Text(prayer+timeLeft, style: TextStyle(color: Colors.white, fontSize: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildTimeSection(context, "Saat", 23),
              buildTimeSection(context, "Dakika", 59),
              buildTimeSection(context, "Saniye", 59),             
            ],
            ),
        ],
      ),
    );
  }
}
Column buildTimeSection(BuildContext context, String subTitle, int time) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("$time", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ,fontSize: 36)),
      Text(subTitle, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ],
  );
}