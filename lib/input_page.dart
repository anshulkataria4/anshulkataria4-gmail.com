import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_tile.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

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
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconTile(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: IconTile(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                ))
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      '180',style: kHeightStyle,
                    ),
                    Text('cm',style: TextStyle(
                      fontSize: 20,
                    ),)
                  ],
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: kActiveCardColor)),
                Expanded(child: ReusableCard(colour: kActiveCardColor)),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            height: kBottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
