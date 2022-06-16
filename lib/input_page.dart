import 'dart:html';
import 'dart:js';
import 'dart:ui';

import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'components/reusable_card.dart';
import 'components/icon_content.dart';
import 'components/bottom_button.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color femaleColor = activeCardColor;
  Color maleColor = activeCardColor;

  void updateColor(gender) {
    if (gender == Gender.male) {
      femaleColor = activeCardColor;
      maleColor = passiveCardColor;
    } else {
      femaleColor = passiveCardColor;
      maleColor = activeCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(Gender.male);
                  });
                },
                child: ReusableCard(
                    colour: maleColor,
                    childWidget: IconContent(
                      icon: Icons.male,
                      label: 'MALE',
                    )),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(Gender.female);
                  });
                },
                child: ReusableCard(
                  colour: femaleColor,
                  childWidget: IconContent(icon: Icons.female, label: 'FEMALE'),
                ),
              )),
            ],
          ),
        ),
        Expanded(
            child: ReusableCard(
          colour: activeCardColor,
        )),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                colour: activeCardColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.male), Text('Male')],
                ),
              )),
              Expanded(
                  child: ReusableCard(
                colour: activeCardColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.male), Text('Male')],
                ),
              )),
            ],
          ),
        ),
        BottomButton(
          bottomContainerColor: bottomContainerColor,
          bottomContainerHeight: bottomContainerHeight,
        )
      ],
    );
  }
}
