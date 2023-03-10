import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'containerIcon.dart';
import 'reusable.dart';

const bottomcontainerheight = 80.0;
const activecolor = Color(0xFF1D1E3E);
const bottomcolorcontainer = Color(0xFFEB1555);
const inactivecardcolor = Color(0xFFB1555);

enum Gender { male, female }

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
              child: Reusable(colour: Color(0xFF1D1E3E)),
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
