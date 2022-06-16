import 'package:flutter/material.dart';
import 'package:bmi_calculator/result_page.dart';

class BottomButton extends StatelessWidget {
  final Color bottomContainerColor;
  final double bottomContainerHeight;

  BottomButton({
    required this.bottomContainerColor,
    required this.bottomContainerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push<void>(
            context, MaterialPageRoute(builder: (context) => ResultPage()))
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: bottomContainerHeight,
        child: Text('CALCULATE YOUR BMI'),
      ),
    );
  }
}
