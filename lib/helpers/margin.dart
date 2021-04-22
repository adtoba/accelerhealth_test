import 'package:accelerhealth_test/helpers/size_config.dart';
import 'package:flutter/material.dart';

class YMargin extends StatelessWidget {
  YMargin(this.val);

  final double val;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();
    // TODO: implement build
    return SizedBox(
      height: config.sh(val),
    );
  }
}

class XMargin extends StatelessWidget {
  XMargin(this.val);

  final double val;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();
    // TODO: implement build
    return SizedBox(
      width: config.sw(val),
    );
  }
}
