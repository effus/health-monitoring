import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  BodyWidget();
  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage('assets/body.png')),
      ],
    );
  }
}