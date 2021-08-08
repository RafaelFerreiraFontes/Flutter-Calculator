import 'package:calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton(this.text, {this.witdh = 95, this.height = 75});

  final String text;
  double witdh;
  double height;

  final app = myapp;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12),
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
              minimumSize: Size(this.witdh, this.height)),
          onPressed: () => {app},
        ));
  }
}
