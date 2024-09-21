import 'package:flutter/material.dart';
import 'package:mind_map/feature/profile/presentation/pages/knowledge_graph_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль пользователя'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://example.com/avatar.jpg'), // URL аватара
              ),
              SizedBox(height: 16),
              Text(
                'ИМЯ ФАМИЛИЯ',
                style: TextStyle(
                  color: Color(0xFF06146C),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              AboutWidget(),
              SizedBox(height: 16),
              TagItemsListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class MapWidget extends StatelessWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}

class TagItemsListWidget extends StatelessWidget {
  const TagItemsListWidget({Key? key}) : super(key: key);

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
                child: Column(
                  children: [
                    const Icon(Icons.map),
                    const Text("Карта знаний"),
                  ],
                )),
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 300,
          child: Scrollbar(
            radius: const Radius.circular(5),
            interactive: true,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(10, (index) {
                return Column(
                  children: [
                    TagItem(title: 'Тег $index', level: 'Уровень $index'),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                );
              }),
            ),
          ),
        ),
        const SizedBox(height: 5),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Color(0xFF7D83FF)),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          onPressed: () {
            // Логика для добавления тега
          },
          child: const Text('ДОБАВИТЬ'),
        )
      ],
    );
  }
}

class AboutWidget extends StatefulWidget {
  const AboutWidget({
    super.key,
  });

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  final TextEditingController _controller = TextEditingController();
  String _description = 'Описание о себе...';
  bool _isEditing = false;

  void _toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
      if (_isEditing) {
        _controller.text = _description; // Заполнить контроллер текстом
      } else {
        _description = _controller.text; // Сохранить изменения
        _controller.clear(); // Очистить контроллер после сохранения
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _isEditing
              ? TextField(
                  controller: _controller,
                  maxLines: null, // Позволяет вводу многострочного текста
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Введите описание...',
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFEEEFFF)),
                  child: Text(
                    _description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
        ),
        IconButton(
          icon: Icon(_isEditing ? Icons.check : Icons.edit),
          onPressed: _toggleEditing,
        ),
      ],
    );
  }
}

class TagItem extends StatelessWidget {
  final String title;
  final String level;

  const TagItem({super.key, required this.title, required this.level});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(33, 125, 131, 255),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              title.toUpperCase(),
              style: const TextStyle(
                  color: Color(0xFF06146C), fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFBCFF95),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            level.toUpperCase(),
            style: const TextStyle(
                color: Color(0xFF06146C), fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
