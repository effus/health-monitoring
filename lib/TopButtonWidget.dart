import 'package:flutter/material.dart';

class TopButtonWidget extends StatelessWidget {
  TopButtonWidget(this.label, this.topIcon, this.onClick);
  final String label;
  final IconData topIcon;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.onClick,
      padding: EdgeInsets.all(10.0),
      color: Theme.of(context).primaryColor,
      focusColor: Theme.of(context).focusColor,
      child: Column( // Replace with a Row for horizontal icon + text
        children: <Widget>[
          Icon(topIcon, color: Theme.of(context).primaryColor),
          Text(label, style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 19))
        ],
      ),
    );
  }
}