import 'package:accelerhealth_test/helpers/assets.dart';
import 'package:accelerhealth_test/style/colors.dart';
import 'package:accelerhealth_test/style/textstyle.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leadingWidth: 50,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CircleAvatar(
            radius: 20, backgroundImage: AssetImage('assets/image.jpeg')),
      ),
      title: Container(
        height: 30,
        width: 120,
        alignment: Alignment.center,
        child: Text('N5,000 left', style: CustomTextStyle.toolBarText),
        decoration: BoxDecoration(
            color: CustomColors.greyColor,
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
