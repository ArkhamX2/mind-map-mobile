import 'package:flutter/material.dart';

class TileTagItemWidget extends StatelessWidget {
  const TileTagItemWidget({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: const Color(0xFFEBEBFF),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        tag,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFF06146C),
        ),
      ),
    );
  }
}
