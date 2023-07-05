import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/components/reusable_card.dart';

import '../components/bottom_container.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.bmi, required this.result, required this.interpretation});
 final String bmi;
 final String result;
 final String interpretation;
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
             Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'YOUR RESULT',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Text(
                        result.toUpperCase(),
                        style: TextStyle(
                            color: result == 'overweight' || result == 'underweight' ? Colors.redAccent : const Color(0xFF24D876) ,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        bmi,
                        style: kBMIText,
                      ),
                      Text(
                        interpretation,
                        style: kLabelStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )),
             BottomContainer(
              onTap: (){
                Navigator.pop(context);
              },
              text: 'RE_CALCULATE',
            )
          ],
        ));
  }
}
