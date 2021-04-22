import 'package:accelerhealth_test/helpers/assets.dart';
import 'package:accelerhealth_test/helpers/margin.dart';
import 'package:accelerhealth_test/helpers/size_config.dart';
import 'package:accelerhealth_test/style/colors.dart';
import 'package:accelerhealth_test/style/textstyle.dart';
import 'package:accelerhealth_test/widgets/appbar.dart';
import 'package:accelerhealth_test/widgets/bottom_widget.dart';
import 'package:accelerhealth_test/widgets/custom_button.dart';
import 'package:accelerhealth_test/widgets/pin_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SizeConfig config = SizeConfig();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        AppBar().preferredSize.height -
        20;

    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Keypad(height * 0.5),
            ),
          ),
          YMargin(20),
          Container(
            alignment: Alignment.center,
            height: config.sh(height * 0.1),
            child: Buttons(),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: AppBar().preferredSize.height,
          alignment: Alignment.center,
          child: BottomNavItems(),
        ),
      ),
    );
  }
}

class AmountWidget extends StatelessWidget {
  AmountWidget({this.value = '0'});

  final String value;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '\$$value',
          style: CustomTextStyle.amount,
        ),
        YMargin(10),
        Text(
          'Add a memo',
          style: TextStyle(color: CustomColors.greyTextColor),
        )
      ],
    );
  }
}

class Keypad extends StatefulWidget {
  Keypad(this.height);

  double height;

  @override
  _KeypadState createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  String amountText = '0';

  String getDigit(int index) {
    if (index == 0) {
      return '1';
    } else if (index == 9) {
      return '.';
    } else if (index == 10) {
      return '0';
    } else {
      return (index + 1).toString();
    }
  }

  void onButtonPressed(int index) {
    if (index == 11) {
      String str = amountText;

      if (str != null && str.length > 0) {
        setState(() {
          amountText = str.substring(0, (str.length - 1));
        });
      }
    } else if (index == 10) {
      if (amountText.length < 6) {
        setState(() {
          amountText = amountText + 0.toString();
        });
      }
    } else if (index == 9) {
      if (amountText.length < 6) {
        setState(() {
          amountText = amountText + '.';
        });
      }
    } else {
      if (amountText.length < 6) {
        setState(() {
          if (amountText == '0') {
            amountText = '';
          }
          amountText = amountText + (index + 1).toString();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();
    RegExp reg = new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    Function mathFunc = (Match match) => '${match[1]},';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Spacer(),
          AmountWidget(
            value: amountText.replaceAllMapped(reg, mathFunc),
          ),
          Spacer(),
          GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: config.sw(70) / config.sh(40),
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(
                12,
                (index) => PinButton(
                    onTap: () => onButtonPressed(index),
                    digit: getDigit(index),
                    isDigit: index != 11,
                    child: Icon(Icons.arrow_back_ios))),
          ),
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig().sw(28)),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              title: 'Debit',
              onPressed: () {},
            ),
          ),
          XMargin(38),
          Expanded(
            child: CustomButton(
              title: 'Credit',
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
