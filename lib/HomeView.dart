import 'package:flutter/material.dart';
import 'package:test_flutter_app/ActivityControlWidget.dart';
import 'package:test_flutter_app/BodyWidget.dart';
import 'package:test_flutter_app/CustomSleekButton.dart';
import 'package:test_flutter_app/ProblemControlWidget.dart';
import 'package:test_flutter_app/TopButtonWidget.dart';
import 'package:test_flutter_app/TwoColumnWidget.dart';
import 'package:test_flutter_app/WeightControlWidget.dart';

class HomeView extends StatelessWidget {

  HomeView(this.title, this.onClickMenuBtn);

  final String title;
  final VoidCallback onClickMenuBtn;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: this.onClickMenuBtn,
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(this.title),
      ),
      body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TopButtonWidget('Еда', Icons.fastfood, null),
                    TopButtonWidget('Нагрузка', Icons.fitness_center, null),
                    TopButtonWidget('Событие', Icons.event_note, null)
                  ]
              ),
              WeightControlWidget(10, 20, 30, 100, 110),
              ActivityControlWidget(),
              ProblemControlWidget(),
              SizedBox(height: 15),
              TwoColumnWidget(
                [
                  CustomSleekButton('HELP', Icons.warning_sharp, Colors.red, Colors.white, 18),
                  SizedBox(height: 2,),
                  CustomSleekButton('Мед. исследование', Icons.add, Theme.of(context).primaryColor, Colors.white, 14),
                  SizedBox(height: 2,),
                  CustomSleekButton('Прогноз', Icons.mediation, Theme.of(context).primaryColor, Colors.white, 14),
                ],
                BodyWidget(),
              )
            ],
          )
      ),
    );
  }
}