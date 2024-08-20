import 'package:flutter/material.dart';

class DurationPart extends StatelessWidget {
  final String durationText;
  final Color durationTextColor;
  final Color durationTextBackgroundColor;

  const DurationPart(
      {super.key,
      required this.durationText,
      required this.durationTextColor,
      required this.durationTextBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        color: durationTextBackgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          durationText,
          style: TextStyle(
            color: durationTextColor,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
