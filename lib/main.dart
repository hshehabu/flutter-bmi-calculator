import 'package:flutter/material.dart';

void main()=> runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        9
      ),
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
    );
  }
}
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: const Center(
        child: Text('body'),
      ),
      floatingActionButton:  FloatingActionButton(
     onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}

