import 'package:accelerhealth_test/helpers/assets.dart';
import 'package:accelerhealth_test/style/colors.dart';
import 'package:flutter/material.dart';

class BottomNavItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: CustomColors.greenColor,
            ),
            child: CustomAssets.first),
        CustomAssets.second,
        CustomAssets.third,
        CustomAssets.fourth
      ],
    );
  }
}
