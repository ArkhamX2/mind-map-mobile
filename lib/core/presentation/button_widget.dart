import 'package:flutter/material.dart';
import 'package:mind_map/resources/colors.dart';

class GardenButton extends StatelessWidget {
  final String title;
  final Function() event;
  const GardenButton({super.key, required this.title, required this.event});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: event,
      style: ButtonStyle(
        minimumSize: const WidgetStatePropertyAll(Size(300, 50)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(
          mainButtonBackgroundColor,
        ),
        elevation: const WidgetStatePropertyAll(0),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: mainButtonForegroundColor,
          fontSize: 23,
        ),
      ),
    );
  }
}
