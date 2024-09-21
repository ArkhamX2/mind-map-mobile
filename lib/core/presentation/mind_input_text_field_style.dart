import 'package:flutter/material.dart';

final mindInputStyle = InputDecoration(
  constraints: const BoxConstraints(maxHeight: 40),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(
      color: Color.fromARGB(255, 170, 141, 211),
    ),
  ),
);
