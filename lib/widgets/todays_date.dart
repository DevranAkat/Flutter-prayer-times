import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:intl/date_symbol_data_local.dart';
import 'package:hijri/hijri_calendar.dart';

class DateContainer extends StatelessWidget {
  
  const DateContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Remove these? 
    initializeDateFormatting('tr_TR', null);
    initializeDateFormatting('ar', null);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 17.0),
      decoration: BoxDecoration(color: Color(0xff222831), borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          Text(todaysDateTurkish(), style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text(todaysDateHijri(), style: TextStyle(color: Colors.white))
          ),
        ],
      ),
    );
  }
}

String todaysDateTurkish() {
  DateTime now =  DateTime.now();
  return DateFormat('EEEE, d MMMM yyyy', 'tr_TR').format(now); 
}

String todaysDateHijri() => HijriCalendar.now().toFormat("dd MMMM yyyy");