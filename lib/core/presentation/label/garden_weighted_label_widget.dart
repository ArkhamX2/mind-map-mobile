// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/label/garden_label_widget.dart';
import 'package:mind_map/resources/colors.dart';

class GardenWeightedLabelWidget extends GardenLabelWidget {
  @override
  final String text;

  @override
  final double fontSize;

  @override
  final FontWeight weight;

  const GardenWeightedLabelWidget({
    required this.text,
    required this.fontSize,
    required this.weight,
  }) : super(
          text: text,
          align: TextAlign.start,
          color: mainForegroundColor,
          fontSize: fontSize,
          weight: weight,
        );
}
