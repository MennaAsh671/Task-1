import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final Color playButtonColor;
  final Color playButtonIconColor;
  const PlayButton(
      {super.key,
      required this.playButtonColor,
      required this.playButtonIconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: playButtonColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(
        Icons.play_arrow_rounded,
        color: playButtonIconColor,
      ),
    );
  }
}
