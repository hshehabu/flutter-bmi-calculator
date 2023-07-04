import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/results_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_container.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'round_icon_button.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? gender;
  int height = 180;
  int weight = 60;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: gender == Gender.male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      function: () {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        colour: gender == Gender.female
                            ? kActiveCardColor
                            : kInActiveCardColor,
                        cardChild: const IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                        function: () {
                          setState(() {
                            gender = Gender.female;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'HEIGHT',
                            style: kLabelStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '$height',
                                style: kNumberTextStyle,
                              ),
                              const Text(
                                'cm',
                                style: kLabelStyle,
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: const Color(0xFF8D8E98),
                              thumbColor: kBottomContainerColor,
                              overlayColor: const Color(0x29EB1555),
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 30.0),
                            ),
                            child: Slider(
                              max: 220.0,
                              min: 100.0,
                              value: height.toDouble(),
                              onChanged: (double value) {
                                setState(() {
                                  height = value.round();
                                });
                              },
                            ),
                          )
                        ]),
                    colour: kActiveCardColor,
                  ),
                ),
              ],
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kLabelStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0) {
                                      weight--;
                                    }
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: kLabelStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) {
                                      age--;
                                    }
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResultsPage(),
                  ),
                );
              },
              text: 'CALCULATE YOUR BMI',
            ),
          ],
        ));
  }
}
