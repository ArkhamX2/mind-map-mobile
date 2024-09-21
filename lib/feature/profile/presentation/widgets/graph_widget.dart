import 'package:flutter/material.dart';
import 'package:flutter_graph_view/flutter_graph_view.dart';

class GraphWidget extends StatelessWidget {
  const GraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var vertexes = <Map>{};
    var courses = [
      {'id': 'course1', 'name': 'Course A', 'tag': 'tag1'},
      {'id': 'course2', 'name': 'Course B', 'tag': 'tag1'},
      {'id': 'course3', 'name': 'Course C', 'tag': 'tag2'},
    ];
    var tags = [
      {'id': 'tag1', 'name': 'Tag1'},
      {'id': 'tag2', 'name': 'Tag2'},
    ];

    // Создаем узлы для курсов
    for (var course in courses) {
      vertexes.add({
        'id': course['id'],
        'name': course['name'],
        'tag': course['tag'],
      });
    }

    // Создаем узлы для тегов
    for (var tag in tags) {
      vertexes.add({
        'id': tag['id'],
        'name': tag['name'],
        'tag': tag['name'],
      });
    }

    var edges = <Map>{};

    // Создаем связи между курсами и тегами
    for (var course in courses) {
      edges.add({
        'srcId': course['tag'],
        'dstId': course['id'],
        'edgeName': 'Contains',
        'ranking': DateTime.now().millisecondsSinceEpoch,
      });
    }

    var data = {
      'vertexes': vertexes,
      'edges': edges,
    };

    return FlutterGraphWidget(
      data: data,
      algorithm: RandomAlgorithm(
        decorators: [
          CoulombDecorator(),
          HookeDecorator(),
          CoulombCenterDecorator(),
          HookeCenterDecorator(),
          ForceDecorator(),
          ForceMotionDecorator(),
          TimeCounterDecorator(),
        ],
      ),
      convertor: MapConvertor(),
      options: Options()
        ..enableHit = false
        ..panelDelay = const Duration(milliseconds: 500)
        ..graphStyle = (GraphStyle()
          ..tagColor = {'tag1': Colors.green, 'tag2': Colors.blue}
          ..tagColorByIndex = [
            Colors.red,
            Colors.orange,
            Colors.yellow,
            Colors.green,
            Colors.blue,
            Colors.purple,
          ])
        ..useLegend = true
        ..edgePanelBuilder = edgePanelBuilder
        ..vertexPanelBuilder = vertexPanelBuilder
        ..edgeShape = EdgeLineShape()
        ..vertexShape = VertexCircleShape(),
    );
  }

  Widget edgePanelBuilder(Edge edge, Viewfinder viewfinder) {
    var c = viewfinder.localToGlobal(edge.position);

    return Stack(
      children: [
        Positioned(
          left: c.x + 5,
          top: c.y,
          child: SizedBox(
            width: 200,
            child: ColoredBox(
              color: Colors.grey.shade900.withAlpha(200),
              child: ListTile(
                title: Text(
                    '${edge.edgeName} @${edge.ranking}\nDelay controlled by options.panelDelay'),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget vertexPanelBuilder(Vertex hoverVertex, Viewfinder viewfinder) {
    var c = viewfinder.localToGlobal(hoverVertex.cpn!.position);
    return Stack(
      children: [
        Positioned(
          left: c.x + hoverVertex.radius + 5,
          top: c.y - 20,
          child: SizedBox(
            width: 120,
            child: ColoredBox(
              color: Colors.grey.shade900.withAlpha(200),
              child: ListTile(
                title: Text(
                  'Id: ${hoverVertex.id}',
                ),
                subtitle: Text(
                    'Tag: ${hoverVertex.data['tag']}\nDegree: ${hoverVertex.degree}'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
