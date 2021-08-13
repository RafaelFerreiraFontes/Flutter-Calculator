import 'package:calculator/calculator_Button.dart';
import 'package:flutter/cupertino.dart';

class GridButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new CalculatorButton("HISTORIC", witdh: (75.5 * 2.75), pad: 7),
          new CalculatorButton("<-", witdh: (75.5 * 2), pad: 6)
        ],
      ),
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
          new CalculatorButton("*")
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
          new CalculatorButton("(", witdh: 22, pad: 0),
          new CalculatorButton(")", witdh: 22, pad: 0),
          new CalculatorButton("+")
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new CalculatorButton("CLEAR", witdh: (75 * 2.75), pad: 6),
          new CalculatorButton("=", witdh: (75.5 * 2), pad: 0)
        ],
      )
    ]));
  }
}
