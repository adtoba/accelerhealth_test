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
          radius: 20,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
        ),
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
