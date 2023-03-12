import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({@required this.colour, this.cardchildcontainer, this.onpress});
  final Color colour;
  final Widget cardchildcontainer;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchildcontainer,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),

        ),
      ),
    );
  }
}
