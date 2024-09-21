// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/label/mind_label_widget.dart';
import 'package:mind_map/resources/colors.dart';

class MindDefaultLabelWidget extends MindLabelWidget {
  @override
  final String text;

  @override
  final double fontSize;

  const MindDefaultLabelWidget({super.key, 
    required this.text,
    required this.fontSize,
  }) : super(
          text: text,
          align: TextAlign.start,
          color: mainForegroundColor,
          fontSize: fontSize,
          weight: FontWeight.normal,
        );
}
