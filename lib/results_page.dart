import 'package:bmi_calculator/reusable.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            child: Text(
              'Your Result',
              style: Result_style,
            ),
          )),
          Expanded(
            flex: 5,
            child: Reusable(
              colour: activecolor,
              cardchildcontainer: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'OVERWEIGHT',
                    style: kresult_style,
                  ),
                  Text(
                    '25',
                    style: kbmi,
                  ),
                  Text(
                    'Your bmi is quite low you should eat more! ',
                    textAlign: TextAlign.center,
                    style: kstatement,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
