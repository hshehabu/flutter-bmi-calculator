import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/reusable_card.dart';

import 'bottom_container.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Text(
                'YOUR RESULT',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'result',
                        style: kResultTextStyle,
                      ),
                      Text(
                        '19.5',
                        style: kBMIText,
                      ),
                      Text(
                        'Your BMI result is quite low ,you should eat more',
                        style: kLabelStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )),
             BottomContainer(
              onTap: (){
              },
              text: 'RE_CALCULATE',
            )
          ],
        ));
  }
}
