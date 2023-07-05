import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.colour, this.cardChild, this.function});
  final Color colour;
  final Widget? cardChild;
  final void Function()? function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
