import 'package:calculator/calculator_Button.dart';
import 'package:flutter/cupertino.dart';

class GridButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          new CalculatorButton("HISTORIC", width: (60 * 2.75), pad: 0),
          new CalculatorButton("<-", width: (60 * 2), pad: 0)
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
          new CalculatorButton(".", width: 8,),
          new CalculatorButton("0", width: 8,),
          new CalculatorButton("(", width: 8),
          new CalculatorButton(")", width: 8),
          new CalculatorButton("+", width: 8,)
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          new CalculatorButton("CLEAR", width: (60 * 2.75), pad: 0),
          new CalculatorButton("=", width: (60 * 2), pad: 0)
        ],
      )
    ]));
  }
}
