
import 'package:bmi_calculator/reusable.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiresult,@required this.interpretation,@required this.resultText});

    final String bmiresult ;
    final String interpretation;
    final String resultText;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
            alignment: Alignment.center,
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
                    resultText.toUpperCase(),
                    style: kresult_style,
                  ),
                  Text(
                    bmiresult,
                    style: kbmi,
                  ),
                  Text(
                   interpretation,
                    textAlign: TextAlign.center,
                    style: kstatement,
                  )
                ],

              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              child: Center(child: Text(' RE-CALCULATE', style: bottombuttonstyles,)),
              color: bottomcolorcontainer,
              padding: EdgeInsets.only(bottom: 10.0),
              height: bottomcontainerheight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ),
        ],

      ),
    );
  }
}
