import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: kLargeButtonTextStyle.copyWith(fontSize: 40),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(top: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kActiveCardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Overweight',
                    style: kResultTextStyle.copyWith(fontSize: 30),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    '26.9',
                    style: kHeightStyle.copyWith(fontSize: 100),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Your BMI Result is quite not good, you should exercise a bit more!! Contact ASP at +91-8802055318 for more info.',
                    style: kLabelTextStyle.copyWith(
                        color: Colors.white, fontSize: 30),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
