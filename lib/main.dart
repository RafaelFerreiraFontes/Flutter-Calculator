import 'package:calculator/grid_Button.dart';

import 'package:flutter/material.dart';

import 'package:function_tree/function_tree.dart';

final myapp = new MyApp();

void main() => runApp(myapp);

class MyApp extends StatelessWidget {
  List<String> historic = [];

  String expression = "";

  @override
  Widget build(BuildContext context) {
    print(calculate("R"));

    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: 455,
                  height: 122,
                  alignment: AlignmentDirectional.topEnd,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black, width: 2.5),
                      color: Colors.blueGrey.shade900),
                  child: Text(
                    expression,
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                )
              ]),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
              Row(children: [GridButton()])
            ],
          ),
        ),
      ),
    );
  }

  bool calculate(String express) {
    try {
      this.expression = express.interpret().toString();

      if (historic.length < 100) {
        historic.add(express);

        print(historic.toString());
      } else {
        print(historic.toString());

        historic.removeAt(0);

        historic.add(express);

        print(historic.toString());
      }

      return true;
    } on Exception catch (exception) {
      print(exception);

      return false;
    }
  }

  void hello() {
    print("hello world");
  }
}
