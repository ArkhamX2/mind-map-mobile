import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/feature/profile/presentation/pages/knowledge_graph_screen.dart';
import 'package:mind_map/feature/profile/presentation/widgets/user_tag_widget.dart';

class UserTagListWidget extends StatefulWidget {
  const UserTagListWidget({Key? key}) : super(key: key);

  @override
  State<UserTagListWidget> createState() => _UserTagListWidgetState();
}

class _UserTagListWidgetState extends State<UserTagListWidget> {
  List<String> _tags = [];
  final List<String> allTags = ['Тег 1', 'Тег 2', 'Тег 3', 'Тег 4'];

  void _filterDialog() async {
    final List<String>? selected = await showDialog<List<String>>(
      context: context,
      builder: (context) {
        List<String> tempSelectedTags = List.from(_tags);
        return AlertDialog(
          title: const Text('Выберите теги'),
          content: SingleChildScrollView(
            child: ListBody(
              children: allTags.map((tag) {
                return CheckboxListTile(
                  title: Text(tag),
                  value: tempSelectedTags.contains(tag),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true) {
                        _tags.add(tag);
                      } else {
                        _tags.remove(tag);
                      }
                    });
                  },
                );
              }).toList(),
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Отмена'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text('Применить'),
              onPressed: () => Navigator.of(context).pop(tempSelectedTags),
            ),
          ],
        );
      },
    );

    if (selected != null) {
      setState(() {
        _tags = selected;
      });
    }
  }

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
          height: 5 * 60 > 300 ? 300 : 5 * 60,
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
        MindButton(title: 'ДОБАВИТЬ', event: _filterDialog),
      ],
    );
  }
}
