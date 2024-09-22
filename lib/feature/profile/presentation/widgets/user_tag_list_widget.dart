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
  List<String> selectedTags = [];
  final List<String> allTags = ['Тег 1', 'Тег 2', 'Тег 3', 'Тег 4'];
void _filterDialog() async {
  // Создаем ValueNotifier для выбранных тегов
  final ValueNotifier<List<String>> selectedTagsNotifier = ValueNotifier<List<String>>(List.from(selectedTags));

  final List<String>? selected = await showDialog<List<String>>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Выберите теги'),
        content: SingleChildScrollView(
          child: ListBody(
            children: allTags.map((tag) {
              return ValueListenableBuilder<List<String>>(
                valueListenable: selectedTagsNotifier,
                builder: (context, selectedTags, child) {
                  return CheckboxListTile(
                    title: Text(tag),
                    value: selectedTags.contains(tag),
                    onChanged: (bool? value) {
                      if (value == true) {
                        selectedTagsNotifier.value.add(tag);
                      } else {
                        selectedTagsNotifier.value.remove(tag);
                      }
                      // Обновляем состояние чтобы отобразить изменения
                      selectedTagsNotifier.notifyListeners();
                    },
                  );
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
            onPressed: () => Navigator.of(context).pop(selectedTagsNotifier.value),
          ),
        ],
      );
    },
  );

  if (selected != null) {
    setState(() {
      selectedTags = selected;
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
          height: selectedTags.length * 60 > 300 ? 300 : selectedTags.length * 60,
          child: Scrollbar(
            radius: const Radius.circular(5),
            interactive: true,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: selectedTags.map((tag) {
                return Column(
                  children: [
                    UserTagWidget(title: tag, level: 'Уровень 2'),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(height: 5),
        MindButton(title: 'ДОБАВИТЬ', event: _filterDialog),
      ],
    );
  }
}
