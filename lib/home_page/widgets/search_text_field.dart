import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white70,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: AppColors.appColor!,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: AppColors.appColor!,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          hintText: 'Search for a soundtrack',
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[400],
          )),
    );
  }
}
