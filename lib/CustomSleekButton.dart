import 'package:flutter/material.dart';
import 'package:sleek_button/sleek_button.dart';

class CustomSleekButton  extends StatelessWidget {

  CustomSleekButton(this.text, this.icon, this.btnColor, this.textColor, this.fontSize);

  final String text;
  final IconData icon;
  final Color btnColor;
  final Color textColor;
  final double fontSize;

  @override

  Widget build(BuildContext context) {
    return SleekButton(
      onTap: () {
        print('tapped!');
      },
      style: SleekButtonStyle.flat(
        color: btnColor,
        size: SleekButtonSize.big,
        context: context,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(this.icon),
          SizedBox(width: 6),
          Text(this.text, style: TextStyle(
            fontSize: this.fontSize
          ),),
        ],
      ),
    );
  }
}