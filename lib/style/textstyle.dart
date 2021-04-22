import 'package:accelerhealth_test/helpers/size_config.dart';
import 'package:accelerhealth_test/style/colors.dart';
import 'package:flutter/material.dart';

class CustomTextStyle {
  static SizeConfig config = SizeConfig();

  static TextStyle toolBarText = TextStyle(
      color: CustomColors.blackColor,
      fontSize: config.sp(14),
      fontWeight: FontWeight.w700);

  static TextStyle buttonText = TextStyle(
      color: CustomColors.blackColor,
      fontSize: config.sp(18),
      fontWeight: FontWeight.w700);

  static TextStyle keypad = TextStyle(
      color: CustomColors.blackColor,
      fontSize: config.sp(25),
      fontWeight: FontWeight.w700);

  static TextStyle amount = TextStyle(
      color: CustomColors.blackColor,
      fontSize: config.sp(60),
      fontWeight: FontWeight.w900);
}
