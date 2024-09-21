import 'package:flutter/material.dart';
import 'package:mind_map/feature/profile/presentation/widgets/graph_widget.dart';

class KnowledgeGraphScreen extends StatefulWidget {
  const KnowledgeGraphScreen({ Key? key }) : super(key: key);

  @override
  _KnowledgeGraphScreenState createState() => _KnowledgeGraphScreenState();
}

class _KnowledgeGraphScreenState extends State<KnowledgeGraphScreen> {
  @override
  Widget build(BuildContext context) {
    return const GraphWidget();
  }
}