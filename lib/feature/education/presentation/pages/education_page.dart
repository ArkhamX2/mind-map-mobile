import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/feature/education/presentation/pages/tile_details_page.dart';
import 'package:mind_map/feature/education/presentation/widgets/tile_tag_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  List<String> selectedTags = [];
  final List<String> allTags = ['Тег 1', 'Тег 2', 'Тег 3', 'Тег 4'];
  final List<Course> courses = [
    Course(
        'Супер-курсы по вторжению в Африку и покорению Питона. Подойдет для тех, кто ничего ',
        'https://example.com/course1',
        'Описание курса 1',
        'https://via.placeholder.com/150',
        ['Тег 1', 'Тег 2', 'Тег 3', 'Тег 4']),
    Course('Курс 2', 'https://example.com/course2', 'Описание курса 2',
        'https://via.placeholder.com/150', ['Тег 1', 'Тег 2']),
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

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              children:
                  selectedTags.map((tag) => TileTagItemWidget(tag: tag)).toList(),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return EducationTileWidget(course: course);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class EducationTileWidget extends StatelessWidget {
  const EducationTileWidget({
    super.key,
    required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(10)),
                child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxHeight: 200),
                    child: Image.network(course.imageUrl,
                        width: double.infinity,
                        fit: BoxFit.fitWidth))),
            Text(
              course.title,
              style: const TextStyle(
                  color: Color(0xFF06146C),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
                children: course.tags
                    .map((tag) => TileTagItemWidget(tag: tag))
                    .toList()),
            const SizedBox(
              height: 10,
            ),
            MindButton(
              title: "Подробнее",
              event: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TileDetailPage(course: course),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Course {
  final String title;
  final String link;
  final String description;
  final String imageUrl;
  final List<String> tags;

  Course(this.title, this.link, this.description, this.imageUrl, this.tags);
}
