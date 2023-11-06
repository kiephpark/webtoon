import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color bgColor, textColor;
  final String text;

  const Button(
      {super.key,
      required this.bgColor,
      required this.textColor,
      required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
