import 'package:flutter/material.dart';

class TwoColumnWidget extends StatelessWidget {
  TwoColumnWidget(this.buttons, this.body);
  final List<Widget> buttons;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.5,
          child: this.body
        ),
        //RaisedButton(onPressed: null, child: Text('HELP'),)
        //Text('G Button', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)
        Column(
          children: this.buttons,
        )
        /**/
      ],
    );
  }

}