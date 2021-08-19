import 'package:calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton(this.text,
      {this.width = 45, this.height = 45, this.pad = 8, this.fontSize = 22.0});

  final String text;
  double width;
  double height;
  double pad;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(pad),
        child: TextButton(
          child: new Text(
            text,
            style: new TextStyle(
                fontSize: this.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Colors.grey,
            fixedSize: Size(this.width, this.height),
          ),
          onPressed: () => { myapp.app.calculator.insert(this.text) },
        ));
  }
}
