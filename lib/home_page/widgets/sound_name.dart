import 'package:flutter/material.dart';
import 'package:task/home_page/widgets/part_of_day.dart';
import 'package:task/home_page/widgets/play_button.dart';

import 'duration.dart';

class SoundName extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final String durationText;
  final String partOfDayText;
  const SoundName({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.durationText,
    required this.partOfDayText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DurationPart(
                  durationText: durationText,
                  durationTextColor: backgroundColor,
                  durationTextBackgroundColor: textColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: PartOfDay(
                    partOfDayText: partOfDayText,
                    partOfDayTextColor: backgroundColor,
                    partOfDayTextBackgroundColor: textColor,
                  ),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: PlayButton(
            playButtonColor: textColor,
            playButtonIconColor: backgroundColor,
          ),
        )
      ],
    );
  }
}
