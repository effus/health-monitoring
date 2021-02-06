
import 'package:flutter/material.dart';

class MainMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () => {},
                child: Text(
                    'Выход',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24
                    )
                ),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).buttonColor,
                  padding: EdgeInsets.all(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
