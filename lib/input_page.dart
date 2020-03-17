import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_tile.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void updateColor(int gender) {
    setState(() {
      //maleCard Pressed
      if (gender == 1){
        if(maleCardColour==inactiveCardColor){
          maleCardColour=activeCardColor;
          femaleCardColor=inactiveCardColor;
        }else{
          maleCardColour=inactiveCardColor;
        }
      }
      //female Card Pressed
      if(gender==2){
        if(femaleCardColor==inactiveCardColor){
          femaleCardColor=activeCardColor;
          maleCardColour=inactiveCardColor;
        }else
          {
            femaleCardColor=inactiveCardColor;
          }
      }
    });
  }

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
                      updateColor(1);
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
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
                    updateColor(2);
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
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
