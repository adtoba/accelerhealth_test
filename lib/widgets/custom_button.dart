import 'package:accelerhealth_test/helpers/size_config.dart';
import 'package:accelerhealth_test/style/colors.dart';
import 'package:accelerhealth_test/style/textstyle.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.title, this.onPressed});

  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();

    return Container(
      height: config.sh(46),
      width: config.sw(145),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            backgroundColor:
                MaterialStateProperty.all(CustomColors.buttonColor)),
        child: Text(
          title,
          style: CustomTextStyle.buttonText,
        ),
      ),
    );
  }
}
