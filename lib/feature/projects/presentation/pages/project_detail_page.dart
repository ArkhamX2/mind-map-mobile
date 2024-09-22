import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/UI/snack_message.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/feature/education/presentation/widgets/tile_tag_widget.dart';
import 'package:mind_map/feature/projects/presentation/pages/projects_page.dart';
import 'package:mind_map/feature/projects/presentation/widgets/comment_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailPage extends StatelessWidget {
  final Project project;

  const ProjectDetailPage({super.key, required this.project});

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
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Card(
              margin: const EdgeInsets.all(15.0),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 200),
                            child: Image.network(project.imageUrl,
                                width: double.infinity, fit: BoxFit.fitWidth))),
                    Text(
                      project.title,
                      style: const TextStyle(
                          color: Color(0xFF06146C),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                        "Внутри самой платформы, при формировании отчетов встроен весьма гибкий и универсальный механизм, для того, чтобы пользователь самостоятельно мог настроить отчеты. Например, вы вели какой-то отчет и вам нужно чтобы данные в нем были сгруппированные определенным образом, совсем не обязательно обращаться к программисту. Вы можете сами зайти в настройки и буквально за пару кликов мыши добавить изменения в то поле, по которому вы хотите, чтобы данные были сгруппированы. Отчет тут же перестроится и вы будете видеть табличные данные в виде группировок, которые вы добавили.",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF06146C))),
                    const SizedBox(height: 16),
                    SingleChildScrollView(
                      child: Row(
                          children: project.tags.map((tag) {
                        return TileTagItemWidget(tag: tag);
                      }).toList()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MindButton(
                              title: 'Просмотр',
                              event: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ProjectDetailPage(project: project),
                                  ),
                                );
                              }),
                        ),
                        IconButton(
                            onPressed: () {
                              snackMessage(context, "Поставлен лайк!");
                            },
                            icon: const Icon(Icons.favorite))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Комментарии:",
                      style: TextStyle(
                          color: Color(0xFF06146C),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: project.comments.isEmpty ? 0 : 200,
                      child: Scrollbar(
                        radius: const Radius.circular(5),
                        interactive: true,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: project.comments
                              .map((e) => CommentWidget(comment: e))
                              .toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Оставьте комментарий...',
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                        BorderSide(color: Color(0xFF8787C7))),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.send),
                            onPressed: () {
                              snackMessage(context, "Отправлено");
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
