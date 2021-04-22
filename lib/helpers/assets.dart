import 'package:flutter_svg/flutter_svg.dart';

class CustomAssets {
  static SvgPicture get first => SvgPicture.asset('assets/first.svg');

  static SvgPicture get second => SvgPicture.asset('assets/second.svg');

  static SvgPicture get third => SvgPicture.asset('assets/third.svg');

  static SvgPicture get fourth => SvgPicture.asset('assets/fourth.svg');

  static SvgPicture get avatar => SvgPicture.asset(
        'assets/avatar.svg',
        height: 30,
        width: 30,
      );
}
