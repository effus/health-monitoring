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
          width: MediaQuery.of(context).size.width * 0.4,
          child: this.body
        ),
        Container(
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: this.buttons,
            )
        ),

        /**/
      ],
    );
  }

}