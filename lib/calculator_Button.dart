import 'package:calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton(this.text,
      {this.witdh = 75.5, this.height = 65, this.pad = 12});

  final String text;
  double witdh;
  double height;
  double pad;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(pad),
        child: TextButton(
          child: new Text(
            text,
            style: new TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Colors.grey,
              minimumSize: Size(
                  MediaQuery.of(context).size.width *
                      (this.witdh / MediaQuery.of(context).size.width),
                  MediaQuery.of(context).size.height *
                      (this.height / MediaQuery.of(context).size.height))),
          onPressed: () => {myapp.app.calculator.insert(this.text)},
        ));
  }
}
