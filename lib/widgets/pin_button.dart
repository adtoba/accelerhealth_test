import 'package:accelerhealth_test/helpers/size_config.dart';
import 'package:accelerhealth_test/style/textstyle.dart';
import 'package:flutter/material.dart';

class PinButton extends StatelessWidget {
  PinButton({this.digit, this.onTap, this.isDigit = true, this.child});

  final String digit;
  final VoidCallback onTap;
  final bool isDigit;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Center(
        child: isDigit
            ? Text(
                digit,
                style: CustomTextStyle.keypad,
              )
            : child,
      ),
    );
  }
}
