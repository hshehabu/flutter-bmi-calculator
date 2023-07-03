import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              children:  const [
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33),),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33)),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children:  const [
                Expanded(
                  child: ReusableCard(colour: Colors.transparent),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33)),
                )
              ],
            )),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.colour});
 final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:  colour,
      ),
    );
  }
}
