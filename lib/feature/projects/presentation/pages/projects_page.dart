import 'package:flutter/material.dart';
import 'package:mind_map/feature/education/presentation/widgets/tile_tag_widget.dart';
import 'package:mind_map/feature/projects/presentation/pages/add_project_page.dart';
import 'package:mind_map/feature/projects/presentation/widgets/project_tile_widget.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  List<String> selectedTags = [];
  final List<String> allTags = ['Тег 1', 'Тег 2', 'Тег 3', 'Тег 4'];

  final List<Project> otherProjects = [
    Project('Чужой проект 1', 'https://example.com/other_project1',
        'Описание чужого проекта 1', 'https://via.placeholder.com/150', [
      'Тег 2',
      'Тег 3',
    ], []),
    Project('Чужой проект 2', 'https://example.com/other_project2',
        'Описание чужого проекта 2', 'https://via.placeholder.com/150', [
      'Тег 2',
      'Тег 4',
    ], []),
  ];

  bool _showMyProjects = true;

  final List<Project> myProjects = [
    Project(
        'Супер-курсы по вторжению в Африку и покорению Питона. Подойдет для тех, кто ничего ',
        'https://example.com/course1',
        'Описание курса 1',
        'https://via.placeholder.com/150', [
      'Тег 1',
      'Тег 2',
      'Тег 3',
      'Тег 4'
    ], [
      Comment("Мявка0", "Крутой проект, но не хватает котов в оформлении :("),
      Comment("Мявка1", "Крутой проект, но не хватает котов в оформлении :("),
      Comment("Мявка2",
          "Крутой проект, но не хватает котов в оформлении :( мямуяммумямумяумуммуямумяумямумямумяумяуямуммямуммяуммямуммяуммумямуммяу"),
      Comment("Мявка3", "Крутой проект, но не хватает котов в оформлении :(")
    ]),
    Project('Курс 2', 'https://example.com/course2', 'Описание курса 2',
        'https://via.placeholder.com/150', [
      'Тег 1',
      'Тег 2'
    ], [
      Comment("Мявка0", "Крутой проект, но не хватает котов в оформлении :("),
      Comment("Мявка1", "Крутой проект, но не хватает котов в оформлении :("),
      Comment("Мявка2",
          "Крутой проект, но не хватает котов в оформлении :( мямуяммумямумяумуммуямумяумямумямумяумяуямуммямуммяуммямуммяуммумямуммяу"),
      Comment("Мявка3", "Крутой проект, но не хватает котов в оформлении :(")
    ]),
    // Добавьте больше курсов по мере необходимости
  ];
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
    final List<Project> displayedProjects =
        _showMyProjects ? myProjects : otherProjects;

    return Scaffold(
      floatingActionButton: _showMyProjects
          ? FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddProjectPage()),
                );
              },
              tooltip: 'Добавить',
              child: const Icon(Icons.add),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            ToggleButtons(
              isSelected: [_showMyProjects, !_showMyProjects],
              onPressed: (int index) {
                setState(() {
                  _showMyProjects = index == 0;
                });
              },
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: const Color(0xFF06146C),
              fillColor: Colors.white,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Мои проекты'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Чужие проекты'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Поиск...',
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Color(0xFF8787C7))),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.filter_list),
                    onPressed: _filterDialog,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: selectedTags
                    .map((tag) => TileTagItemWidget(tag: tag))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: displayedProjects.length,
                itemBuilder: (context, index) {
                  final project = displayedProjects[index];
                  return ProjectTileWidget(project: project);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Project {
  final String title;
  final String link;
  final String description;
  final String imageUrl;
  final List<String> tags;
  final List<Comment> comments;

  Project(this.title, this.link, this.description, this.imageUrl, this.tags,
      this.comments);
}

class Comment {
  final String author;
  final String text;

  Comment(this.author, this.text);
}
