import 'package:flutter/material.dart';

class ActivityControlWidget extends StatelessWidget {

  ActivityControlWidget();

  @override

  Widget build(BuildContext context) {
      return Card(
        child: Padding(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Активность', style: TextStyle(fontSize: 22)),
              SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    width: MediaQuery.of(context).size.width * 0.20,
                    child: Column(
                      verticalDirection: VerticalDirection.down,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Полезная', textAlign: TextAlign.start),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Row(
                      children: [
                        Icon(Icons.fitness_center, color: Theme.of(context).highlightColor)
                        //CircularProgressIndicator(value: 45)
                      ],
                    ),
                  )
                ]
              ),
              SizedBox(height: 2),
              Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Column(
                        verticalDirection: VerticalDirection.down,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Вредная', textAlign: TextAlign.start),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        color: Theme.of(context).errorColor,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.smoke_free, color: Theme.of(context).highlightColor),
                          Icon(Icons.smoke_free, color: Theme.of(context).highlightColor),
                          Icon(Icons.smoke_free, color: Theme.of(context).highlightColor),
                          Icon(Icons.smoke_free, color: Theme.of(context).highlightColor),
                          Icon(Icons.smoke_free, color: Theme.of(context).highlightColor),
                          Icon(Icons.smoke_free, color: Theme.of(context).highlightColor)
                          //CircularProgressIndicator(value: 45)
                        ],
                      ),
                    )
                  ]
              )
            ]
        )
      )
    );
  }
}