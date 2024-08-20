import 'package:flutter/material.dart';
import 'package:task/home_page/widgets/play_button.dart';

class FavoriteItem extends StatelessWidget {
  final Color containerColor;
  final String text;
  final Color textColor;
  final String duration;
  final Color playBackBarColor;

  const FavoriteItem({
    super.key,
    required this.text,
    required this.duration,
    required this.containerColor,
    required this.textColor,
    required this.playBackBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(25),
        ),
        width: 180,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 27,
                    overflow: TextOverflow.clip),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 30, 5, 5),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 160,
                      height: 45,
                      decoration: BoxDecoration(
                        color: playBackBarColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          duration,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 90,
                      child: PlayButton(
                        playButtonColor: textColor,
                        playButtonIconColor: playBackBarColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
