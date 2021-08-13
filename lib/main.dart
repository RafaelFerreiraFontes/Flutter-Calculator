import 'package:calculator/grid_Button.dart';

import 'package:flutter/material.dart';

import 'package:function_tree/function_tree.dart';

final myapp = new MyApp();

void main() => runApp(myapp);

class MyApp extends StatelessWidget {
  final Calculator app = new Calculator();

  @override
  Widget build(BuildContext context) {
    return app;
  }
}

class Calculator extends StatefulWidget {
  final _Calculator calculator = new _Calculator();

  @override
  _Calculator createState() => calculator;
}

class _Calculator extends State<Calculator> {
  List<String> historic = [];

  String expression = "";

  String preview = "Preview";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: null,
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
            child: GridButton(),
          ),
        ]),
      ),
    );
  }

  bool calculate(String express) {
    try {
      this.expression = express.interpret().toString();

      if (historic.length < 100) {
        historic.add(express);
      } else {
        historic.removeAt(0);

        historic.add(express);
      }

      return true;
    } on Exception catch (exception) {
      print(exception);

      return false;
    }
  }

  void insert(String caracter) {
    if (caracter != "HISTORIC" &&
        caracter != "<-" &&
        caracter != "CLEAR" &&
        caracter != "=") {
      print(this.expression);

      setState(() {
        this.expression += caracter;
      });
    } else if (caracter == "<-") {
      setState(() {
        if (this.expression.length > 0) {
          this.expression =
              this.expression.substring(0, this.expression.length - 1);
        }
      });
    } else if (caracter == "CLEAR") {
      setState(() {
        this.expression = "";
      });
    } else if (caracter == "=") {
      setState(() {
        if (calculate(this.expression)) {
          this.preview = "";
        } else {
          this.preview = 'Error';
        }
      });
    }
  }
}
