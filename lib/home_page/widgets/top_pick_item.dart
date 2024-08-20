import 'package:flutter/material.dart';
import 'package:task/home_page/widgets/duration.dart';
import 'package:task/home_page/widgets/part_of_day.dart';
import 'package:task/home_page/widgets/play_button.dart';
import 'package:task/home_page/widgets/sound_name.dart';

class TopPicksItem extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final String durationText;
  final String partOfDayText;

  const TopPicksItem(
      {super.key,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      required this.durationText,
      required this.partOfDayText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: textColor,
      ),
      height: 100,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(4.0),
              topLeft: Radius.circular(4)),
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SoundName(text: text, textColor: textColor, backgroundColor: backgroundColor, durationText: durationText, partOfDayText: partOfDayText),
        ),
      ),
    );
  }
}
