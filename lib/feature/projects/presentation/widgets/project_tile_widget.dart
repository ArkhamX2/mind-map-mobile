import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/feature/education/presentation/widgets/tile_tag_widget.dart';
import 'package:mind_map/feature/projects/presentation/pages/project_detail_page.dart';
import 'package:mind_map/feature/projects/presentation/pages/projects_page.dart';

class ProjectTileWidget extends StatelessWidget {
  const ProjectTileWidget({
    super.key,
    required this.project,
  });

  final Project project;

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
                borderRadius: const BorderRadius.all(Radius.circular(10)),
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
            const SizedBox(
              height: 10,
            ),
            Row(
                children: project.tags
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
                    builder: (context) => ProjectDetailPage(project: project),
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
