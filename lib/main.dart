import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sleek_button/sleek_button.dart';
import 'package:test_flutter_app/ActivityControlWidget.dart';
import 'package:test_flutter_app/BodyWidget.dart';
import 'package:test_flutter_app/ProblemControlWidget.dart';
import 'package:test_flutter_app/TopButtonWidget.dart';
import 'package:test_flutter_app/TwoColumnWidget.dart';
import 'package:test_flutter_app/WeightControlWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        focusColor: Colors.orange,
        errorColor: Colors.red,
        accentColor: Colors.orange,
        highlightColor: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Health Monitoring'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _handleMenuClick() {
    log('click!');
  }

  @override
  Widget build(BuildContext context) {


    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: _handleMenuClick,
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
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
                  SleekButton(
                    onTap: () {
                      print('tapped!');
                    },
                    style: SleekButtonStyle.flat(
                      color: Colors.red,
                      size: SleekButtonSize.big,
                      context: context,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Icon(Icons.warning_sharp),
                        const SizedBox(width: 6),
                        const Text('HELP!'),
                      ],
                    ),
                  )
                ],
                BodyWidget(),
              )
            ],
          )
      ),
    );
  }
}
