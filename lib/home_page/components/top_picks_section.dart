import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';
import 'package:task/home_page/widgets/top_pick_item.dart';

class TopPicksSection extends StatelessWidget {
  const TopPicksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 15, 12),
          child: TopPicksItem(
              text: 'Ambient Forest',
              textColor: AppColors.sound1TextColor,
              backgroundColor: AppColors.sound1BackgroundColor,
              durationText: '5m',
              partOfDayText: 'Morning'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 15, 12),
          child: TopPicksItem(
              text: 'Blue Sky',
              textColor: AppColors.sound2TextColor,
              backgroundColor: AppColors.sound2BackgroundColor,
              durationText: '11m',
              partOfDayText: 'Morning'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 15, 12),
          child: TopPicksItem(
              text: 'Purple Nebula',
              textColor: AppColors.sound3TextColor,
              backgroundColor: AppColors.sound3BackgroundColor,
              durationText: '7m',
              partOfDayText: 'Night'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 15, 12),
          child: TopPicksItem(
              text: 'Purple Nebula',
              textColor: AppColors.sound3TextColor,
              backgroundColor: AppColors.sound3BackgroundColor,
              durationText: '7m',
              partOfDayText: 'Night'),
        ),
      ],
    );
  }
}
