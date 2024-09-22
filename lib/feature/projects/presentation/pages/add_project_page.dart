import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/feature/education/presentation/widgets/tile_tag_widget.dart';

class AddProjectPage extends StatefulWidget {
  const AddProjectPage({super.key});

  @override
  _AddProjectPageState createState() => _AddProjectPageState();
}

class _AddProjectPageState extends State<AddProjectPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _linkController = TextEditingController();
  List<String> _tags = [];

  final List<String> allTags = ['Тег 1', 'Тег 2', 'Тег 3', 'Тег 4'];

  void _removeTag(int index) {
    setState(() {
      _tags.removeAt(index);
    });
  }

  void _save() {
    // Логика сохранения элемента
    print(
        'Сохранено: ${_titleController.text}, ${_descriptionController.text}, ${_linkController.text}, Теги: $_tags');
  }

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
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 205, 207, 255),
            Colors.white, // starting color
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Фото:'),
                        MindButton(title: 'Загрузить', event: () {})
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(
                          labelText: 'Название',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelStyle: const TextStyle(
                            color: Color(0xFF06146C),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _descriptionController,
                      maxLines: null, // Позволяет вводу многострочного текста
                      decoration: InputDecoration(
                          labelText: 'Описание',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelStyle: const TextStyle(
                            color: Color(0xFF06146C),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        const Text(
                          "Теги:",
                          style: TextStyle(
                            color: Color(0xFF06146C),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: _filterDialog,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: _tags.map((tag) {
                                int index = _tags.indexOf(tag);
                                return Container(
                                  margin: const EdgeInsets.only(right: 8.0),
                                  child: Row(
                                    children: [
                                      TileTagItemWidget(tag: tag),
                                      IconButton(
                                        icon: const Icon(Icons.delete, size: 16.0),
                                        onPressed: () => _removeTag(index),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _linkController,
                      decoration: InputDecoration(
                          labelText: 'Ссылка',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelStyle: const TextStyle(
                            color: Color(0xFF06146C),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            // Логика удаления элемента
                          },
                        ),
                        Expanded(
                            child:
                                MindButton(title: 'Сохранить', event: _save)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
