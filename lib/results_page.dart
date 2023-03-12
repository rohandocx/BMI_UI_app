import 'package:bmi_calculator/reusable.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';
class ResultsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(child: Container(
            child: Text('Your Result',
            style: Result_style,
            ),
          )),
          Expanded(
            flex: 5,
              child: Reusable(colour: activecolor,

              ),

          ),
        ],
      ),
    );
  }
}


















