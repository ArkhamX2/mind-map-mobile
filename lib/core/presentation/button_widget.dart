import 'package:flutter/material.dart';

class MindButton extends StatelessWidget {
  final String title;
  final Function() event;
  const MindButton({super.key, required this.title, required this.event});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: event,
      style: ButtonStyle(
        minimumSize: const WidgetStatePropertyAll(Size(0, 50)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(Color(0xFF7D83FF)),
        elevation: const WidgetStatePropertyAll(0),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
    );
  }
}
