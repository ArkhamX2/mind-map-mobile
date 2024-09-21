import 'package:flutter/material.dart';
import 'package:mind_map/feature/education/presentation/pages/tile_details_page.dart';
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
    final List<String>? selected = await showDialog<List<String>>(
      context: context,
      builder: (context) {
        List<String> tempSelectedTags = List.from(selectedTags);
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
                        tempSelectedTags.add(tag);
                      } else {
                        tempSelectedTags.remove(tag);
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Курсы'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Поиск...',
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
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
              children: selectedTags.map((tag) {
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
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return Card(
                  margin: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            child: ConstrainedBox(
                                constraints: const BoxConstraints(maxHeight: 200),
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
                        Row(
                            children: course.tags.map((tag) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
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
                        }).toList()),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Color(0xFF7D83FF)),
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CourseDetailPage(course: course),
                              ),
                            );
                          },
                          child: const Text('Подробнее'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
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
