import 'package:calculator/calculator_Button.dart';
import 'package:flutter/cupertino.dart';

class GridButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new CalculatorButton("7"),
          new CalculatorButton("8"),
          new CalculatorButton("9"),
          new CalculatorButton("/")
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new CalculatorButton("4"),
          new CalculatorButton("5"),
          new CalculatorButton("6"),
          new CalculatorButton("X")
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new CalculatorButton("1"),
          new CalculatorButton("2"),
          new CalculatorButton("3"),
          new CalculatorButton("-")
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new CalculatorButton("."),
          new CalculatorButton("0"),
          new CalculatorButton("00"),
          new CalculatorButton("+")
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new CalculatorButton(
            "CLEAR",
            witdh: 215,
          ),
          new CalculatorButton(
            "=",
            witdh: 215,
          )
        ],
      )
    ]);
  }
}
