import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class PrayerTimesContainer extends StatelessWidget {
  final String prayer = "Trondheim";
  final String timeLeft = " namaz vakitleri";
  
  const PrayerTimesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(color: Color(0xff222831), borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          Text(prayer+timeLeft, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,0),
            child: Table(
              children: <TableRow>[
                buildPrayerSection(context, "O", "İmsak", "05:58"),
                buildPrayerSection(context, "O", "Güneş", "08:46"),
                buildPrayerSection(context, "O", "Öğle", "12:08"),
                buildPrayerSection(context, "O", "İkindi", "13:06"),
                buildPrayerSection(context, "O", "Akşam", "15:22"),
                buildPrayerSection(context, "O", "Yatsı", "16:42"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
TableRow buildPrayerSection(BuildContext context, String icon, String timeName, String time) {
  return TableRow(
    decoration: BoxDecoration(border: Border(
      bottom: BorderSide(
        color: Colors.white,
        width: 2.0,
        ),
      ),
    ),
    children: [
      TableCell(child: Text(icon, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)), verticalAlignment: TableCellVerticalAlignment.middle),
      TableCell(child: Text(timeName, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18)), verticalAlignment: TableCellVerticalAlignment.middle),
      TableCell(child: Text(time, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)), verticalAlignment: TableCellVerticalAlignment.middle),
    ],
  );
}
// SvgPicture imsak(Color color) => SvgPicture.asset(assets\svg\imsak.svg, color: color, height: 17);
// SvgPicture sun(Color color) => SvgPicture.asset(AppIcons.sunSVG, color: color, height: 17);
// SvgPicture noon(Color color) => SvgPicture.asset(AppIcons.noonSVG, color: color, height: 17);
// SvgPicture afternoon(Color color) => SvgPicture.asset(AppIcons.afternoonSVG, color: color, height: 17);
// SvgPicture evening(Color color) => SvgPicture.asset(AppIcons.eveningSVG, color: color, height: 17);
