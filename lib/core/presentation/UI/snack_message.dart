import 'package:flutter/material.dart';
import 'package:mind_map/resources/colors.dart';
void snackMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: mainForegroundColor),
        ),
        backgroundColor: mainButtonBackgroundColor,
      ),
    );
}
