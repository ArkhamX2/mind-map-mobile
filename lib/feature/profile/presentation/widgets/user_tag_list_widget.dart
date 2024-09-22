import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/feature/profile/presentation/pages/knowledge_graph_screen.dart';
import 'package:mind_map/feature/profile/presentation/widgets/user_tag_widget.dart';

class UserTagListWidget extends StatelessWidget {
  const UserTagListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'ТЕГИ:',
              style: TextStyle(
                color: Color(0xFF06146C),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KnowledgeGraphScreen()),
                  );
                },
                child: const Column(
                  children: [
                    Icon(Icons.map),
                    Text("Карта знаний"),
                  ],
                )),
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 300,
          child: Scrollbar(
            radius: const Radius.circular(5),
            interactive: true,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(10, (index) {
                return Column(
                  children: [
                    UserTagWidget(title: 'Тег $index', level: 'Уровень $index'),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                );
              }),
            ),
          ),
        ),
        const SizedBox(height: 5),
        MindButton(title: 'ДОБАВИТЬ', event: () {}),
      ],
    );
  }
}
