// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/label/mind_label_widget.dart';

class MindColoredLabelWidget extends MindLabelWidget {
  @override
  final String text;

  @override
  final double fontSize;

  @override
  final Color color;

  const MindColoredLabelWidget({super.key, 
    required this.text,
    required this.fontSize,
    required this.color,
  }) : super(
          text: text,
          align: TextAlign.start,
          color: color,
          fontSize: fontSize,
          weight: FontWeight.normal,
        );
}
