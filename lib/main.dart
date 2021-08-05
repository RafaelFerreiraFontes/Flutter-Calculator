import 'package:calculator/grid_Button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  '00000000000000000000000',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ]),
              Padding(padding: EdgeInsets.all(16)),
              Row(children: [GridButton()])
            ],
          ),
        ),
      ),
    );
  }
}
