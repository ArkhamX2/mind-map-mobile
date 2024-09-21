// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/label/mind_label_widget.dart';
import 'package:mind_map/resources/colors.dart';

class MindAlignedLabelWidget extends MindLabelWidget {
  @override
  final String text;

  @override
  final double fontSize;

  @override
  final TextAlign align;

  const MindAlignedLabelWidget({super.key, 
    required this.text,
    required this.fontSize,
    required this.align,
  }) : super(
          text: text,
          align: align,
          color: mainForegroundColor,
          fontSize: fontSize,
          weight: FontWeight.normal,
        );
}
