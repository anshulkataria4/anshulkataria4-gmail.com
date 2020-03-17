import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_tile.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }
const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
//  Color maleCardColour = inactiveCardColor;
//  Color femaleCardColor = inactiveCardColor;
//
//  void updateColor(Gender selectedGender) {
//    setState(() {
//      //maleCard Pressed
//      if (Gender.male == selectedGender) {
//        maleCardColour = activeCardColor;
//        femaleCardColor = inactiveCardColor;
//      }
//      //female Card Pressed
//      if (Gender.female == selectedGender) {
//        femaleCardColor = activeCardColor;
//        maleCardColour = inactiveCardColor;
//      }
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconTile(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
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
                        : inactiveCardColor,
                    cardChild: IconTile(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ))
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: activeCardColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: activeCardColor)),
                Expanded(child: ReusableCard(colour: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
