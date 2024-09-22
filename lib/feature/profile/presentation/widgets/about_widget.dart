import 'package:flutter/material.dart';

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
