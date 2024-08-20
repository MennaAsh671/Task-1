import 'package:flutter/material.dart';

class PartOfDay extends StatelessWidget {
  final String partOfDayText;
  final Color partOfDayTextColor;
  final Color partOfDayTextBackgroundColor;
  const PartOfDay(
      {super.key,
      required this.partOfDayText,
      required this.partOfDayTextColor,
      required this.partOfDayTextBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        color: partOfDayTextBackgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          partOfDayText,
          style: TextStyle(
            color: partOfDayTextColor,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
