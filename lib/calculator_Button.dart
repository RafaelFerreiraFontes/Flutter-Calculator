import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12),
        child: TextButton(
          child: Text(
            text,
            style: new TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Colors.grey, minimumSize: Size(45, 45)),
          onPressed: () => {print(this.text)},
        ));
  }
}
