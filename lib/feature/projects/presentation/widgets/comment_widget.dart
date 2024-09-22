import 'package:flutter/material.dart';
import 'package:mind_map/feature/projects/presentation/pages/projects_page.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
    required this.comment,
  });

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://example.com/avatar.jpg'), // URL аватара
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  comment.author,
                  style: const TextStyle(
                      color: Color(0xFF06146C),
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              comment.text,
              style: const TextStyle(
                  color: Color(0xFF06146C),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
