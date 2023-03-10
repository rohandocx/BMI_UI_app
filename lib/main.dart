import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xff181C3B), //<-- SEE HERE
        ),
        scaffoldBackgroundColor: const Color(0xFF000000),

      ),
        home: InputPage(),
    );
  }
}

