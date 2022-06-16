import 'package:bmi_calculator/components/icon_content.dart';
import 'package:flutter/material.dart';
import 'components/reusable_card.dart';
import 'constants.dart';
import 'components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xFF0A0D22)),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          backgroundColor: Color(0xFF0A0D22),
          title: const Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ReusableCard(
                colour: activeCardColor,
                childWidget: IconContent(icon: Icons.done, label: 'hello:d')),
            BottomButton(
                bottomContainerColor: bottomContainerColor,
                bottomContainerHeight: bottomContainerHeight)
          ],
        ),
      ),
    );
  }
}
