import 'package:flutter/material.dart';

class WeightControlWidget extends StatelessWidget {

  final int collectedCalories;
  final int lostCalories;
  final int normalDayCountCalories;
  final int weight;
  final int weightForecast;

  WeightControlWidget(this.collectedCalories, this.lostCalories, this.normalDayCountCalories, this.weight, this.weightForecast);

  @override

  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Контроль веса', style: TextStyle(fontSize: 22)),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Получено ккал сегодня', textAlign: TextAlign.center),
                          SizedBox(height: 10),
                          Text(collectedCalories.toString(), style: TextStyle(fontSize: 24))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Потрачено ккал сегодня', textAlign: TextAlign.center),
                          SizedBox(height: 10),
                          Text(lostCalories.toString(), style: TextStyle(fontSize: 24))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: MediaQuery.of(context).size.width * 0.18,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Норма на день', textAlign: TextAlign.center),
                          SizedBox(height: 24),
                          Text(normalDayCountCalories.toString(), style: TextStyle(fontSize: 24))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: MediaQuery.of(context).size.width * 0.18,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Вес', textAlign: TextAlign.center),
                          SizedBox(height: 40),
                          Text(weight.toString(), style: TextStyle(fontSize: 24))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: MediaQuery.of(context).size.width * 0.18,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Прогноз на месяц', textAlign: TextAlign.center),
                          SizedBox(height: 24),
                          Text(weightForecast.toString(), style: TextStyle(fontSize: 24))
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