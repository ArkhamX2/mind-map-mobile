import 'package:flutter/material.dart';

abstract class MindLabelWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight weight;
  final TextAlign align;
  final Color color;

  const MindLabelWidget({
    super.key,
    required this.text,
    required this.fontSize,
    required this.weight,
    required this.align,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: weight,
      ),
    );
  }
}
