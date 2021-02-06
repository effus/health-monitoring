import 'package:flutter/material.dart';

class ProblemControlWidget  extends StatelessWidget {

  ProblemControlWidget();

  @override

  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Проблемы в организме', style: TextStyle(fontSize: 22)),
                  ListBody(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(Icons.priority_high, color: Theme.of(context).errorColor),
                        title: Text('fff'),
                      ),
                      Divider(height: 0),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(Icons.priority_high, color: Theme.of(context).accentColor),
                        title: Text('fff'),
                      ),
                      Divider(height: 0),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(Icons.priority_high, color: Theme.of(context).accentColor),
                        title: Text('fff'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: null,
                        backgroundColor: Theme.of(context).accentColor,
                        child: Icon(Icons.add, color: Theme.of(context).highlightColor),
                      )
                    ],
                  )
                ]
            )
        )
    );
  }
}