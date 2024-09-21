import 'package:flutter/material.dart';
import 'package:mind_map/feature/education/presentation/pages/education_page.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseDetailPage extends StatelessWidget {
  final Course course;

  CourseDetailPage({required this.course});

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
          title: Text(course.title),
        ),
        body: SingleChildScrollView(
          child: Card(
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
                              width: double.infinity, fit: BoxFit.fitWidth))),
                  Text(
                    course.title,
                    style: const TextStyle(
                        color: Color(0xFF06146C),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 16),
                  Text(
                      "Внутри самой платформы, при формировании отчетов встроен весьма гибкий и универсальный механизм, для того, чтобы пользователь самостоятельно мог настроить отчеты. Например, вы вели какой-то отчет и вам нужно чтобы данные в нем были сгруппированные определенным образом, совсем не обязательно обращаться к программисту. Вы можете сами зайти в настройки и буквально за пару кликов мыши добавить изменения в то поле, по которому вы хотите, чтобы данные были сгруппированы. Отчет тут же перестроится и вы будете видеть табличные данные в виде группировок, которые вы добавили.",
                      style: TextStyle(fontSize: 16,
                      color: Color(0xFF06146C))),
                  SizedBox(height: 16),
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
                  SizedBox(height: 10,),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color(0xFF7D83FF)),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourseDetailPage(course: course),
                        ),
                      );
                    },
                    child: const Text('Подробнее'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
