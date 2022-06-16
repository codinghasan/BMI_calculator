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
  late Gender selectedGender;

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
                    selectedGender = Gender.male;
                  });
                },
                child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? passiveCardColor
                        : activeCardColor,
                    childWidget: IconContent(
                      icon: Icons.male,
                      label: 'MALE',
                    )),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: ReusableCard(
                  colour: selectedGender == Gender.female
                      ? activeCardColor
                      : passiveCardColor,
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
