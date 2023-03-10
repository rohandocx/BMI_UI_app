import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'containerIcon.dart';
import 'reusable.dart';
import 'Constants.dart';

enum Gender { male, female }
int height = 180;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    colour: selectedGender == Gender.male
                        ? activecolor
                        : inactivecardcolor,
                    cardchildcontainer: containerIcon(
                        icon: FontAwesomeIcons.mars, label: 'Male'),
                     onpress: () {
                       setState(() {
                         selectedGender = Gender.male;
                       });
                     },
                  ),
                ),
                Expanded(
                    child: Reusable(
                      colour: selectedGender == Gender.female
                          ? activecolor
                          : inactivecardcolor,
                      cardchildcontainer: containerIcon(
                          icon: FontAwesomeIcons.venus, label: 'Female'),
                      onpress:  (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                ),
              ],
            )),
            Expanded(
              child: Reusable(colour: Color(0xFF1D1E3E),
              cardchildcontainer: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Height',
                  style: labelstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline:  TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),
                        style: Boldtext,
                      ),
                      Text('cm', style: labelstyle,),
                    ],
                  ),
                  Slider(value: height.toDouble(),
                      min: 120.0,
                      max:  220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor:  Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                         height = newValue.round();
                        });
                      },
                  ),
                ],
              ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    colour: Color(0xFF1D1E3E),
                  ),
                ),
                Expanded(
                  child: Reusable(colour: Color(0xFF1D1E3E)),
                ),
              ],
            )),
            Container(
              color:bottomcolorcontainer,
              height: bottomcontainerheight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ));
  }
}
