import 'package:flutter/material.dart';

class UserTagWidget extends StatelessWidget {
  final String title;
  final String level;

  const UserTagWidget({super.key, required this.title, required this.level});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(33, 125, 131, 255),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              title.toUpperCase(),
              style: const TextStyle(
                  color: Color(0xFF06146C), fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFBCFF95),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            level.toUpperCase(),
            style: const TextStyle(
                color: Color(0xFF06146C), fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
