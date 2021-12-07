import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  final String date = "Çarşamba 7 Aralık 2021";
  final String dateHicri = "13 Rebîulâhir 1443";
  
  const DateContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 17.0),
      decoration: BoxDecoration(color: Color(0xff222831), borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          Text(date, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text(dateHicri,
              style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}

String getTodaysDate() {
  DateTime now =  DateTime.now();
  DateTime date =  DateTime(now.year, now.month, now.day); 
  return date.toString();
}