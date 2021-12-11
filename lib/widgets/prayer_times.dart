import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class PrayerTimesContainer extends StatelessWidget {
  final String prayer = "Trondheim";
  final String timeLeft = " namaz vakitleri";
  
  const PrayerTimesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      decoration: BoxDecoration(color: Color(0xff222831), borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          Text(prayer+timeLeft, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
          Padding(
            padding: const EdgeInsets.fromLTRB(40,0,40,0),
            child: Table(
              children: <TableRow>[
                buildPrayerTime(tableWidget(context, imsak(Color(0xffCD793C))), "İmsak", "06:34"),
                buildPrayerTime(tableWidget(context, afternoon(Color(0xffCD793C))), "Güneş", "09:42"),
                buildPrayerTime(tableWidget(context, sun(Color(0xffCD793C))), "Öğle", "12:16"),
                buildPrayerTime(tableWidget(context, noon(Color(0xffCD793C))), "İkindi", "12:46"),
                buildPrayerTime(tableWidget(context, evening(Color(0xffCD793C))), "Akşam", "14:41"),
                buildPrayerTime(tableWidget(context, Icon(Icons.nightlight_round, color: Color(0xffCD793C), size: 22)), "Yatsı", "16:01"),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
TableRow buildPrayerTime(Widget icon, String timeName, String time) {
  return TableRow(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.white,
        ),
      ),
    ),
    children: [
      TableCell(child: Padding( padding: const EdgeInsets.all(5), child: icon), verticalAlignment: TableCellVerticalAlignment.bottom),
      TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: Text(timeName, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16))),
      TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: Text(time, textAlign: TextAlign.center, style: TextStyle(color: Colors.white))), 

    ],
  );
}

Container tableWidget(BuildContext context, Widget _widget) => Container(height: MediaQuery.of(context).size.height / 30, child: Container(child: _widget));

SvgPicture imsak(Color color) => SvgPicture.asset('assets/svg/imsak.svg', color: color, height: 17);
SvgPicture sun(Color color) => SvgPicture.asset('assets/svg/sun.svg', color: color, height: 17);
SvgPicture noon(Color color) => SvgPicture.asset('assets/svg/sunFill.svg', color: color, height: 17);
SvgPicture afternoon(Color color) => SvgPicture.asset('assets/svg/sunrise.svg', color: color, height: 17);
SvgPicture evening(Color color) => SvgPicture.asset('assets/svg/sunset.svg', color: color, height: 17);
