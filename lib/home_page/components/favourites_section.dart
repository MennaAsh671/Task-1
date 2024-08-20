import 'package:flutter/material.dart';

import '../widgets/favorites_item.dart';

class FavoritesSection extends StatelessWidget {
  const FavoritesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FavoriteItem(
          text: 'Emotional Balance',
          textColor: Colors.grey[300]!,
          duration: '15m',
          containerColor: Colors.black,
          playBackBarColor: Colors.grey[800]!,
        ),
        FavoriteItem(
          text: 'Quiet Tranquility',
          textColor: Colors.black,
          duration: '5m',
          containerColor: Colors.grey[300]!,
          playBackBarColor: Colors.grey[400]!,
        )
      ],
    );
  }
}
