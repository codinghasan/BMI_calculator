import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xFF0A0D22)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0D22),
          title: const Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: InputPage(),
      ),
    );
  }
}
