import 'package:accelerhealth_test/helpers/screen.dart';
import 'package:accelerhealth_test/helpers/size_config.dart';
import 'package:accelerhealth_test/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      color: Colors.white,
      title: 'Accelerhealth test',
      builder: (context, child) {
        List<double> size = calculateSize(context);
        SizeConfig.init(context,
            height: size[0], width: size[1], allowFontScaling: false);
        return MaterialApp(
          title: 'Accelerhealth test',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Caros',
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage(),
        );
      },
    );
  }

  List<double> calculateSize(BuildContext context) {
    bool isLargePhone = Screen.diagonal(context) > 720;
    bool isNarrow = Screen.widthInches(context) < 3.5;
    bool isTablet = Screen.diagonalInches(context) >= 7;

    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    var devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    if (isTablet) {
      var ratio = deviceWidth / deviceHeight;
      print('Is tablet');
      return [deviceHeight * ratio, deviceWidth * ratio];
    } else if (isLargePhone) {
      print('Is large phone');
      return [deviceHeight, deviceWidth];
    } else {
      print('Is small phone');
      return [deviceHeight * devicePixelRatio, deviceWidth * devicePixelRatio];
    }
  }
}
