import 'package:flutter/material.dart';

class MainNavigatorWidget extends StatefulWidget {
  const MainNavigatorWidget({super.key});

  @override
  State<MainNavigatorWidget> createState() =>
      _MainNavigatorWidgetState();
}

class _MainNavigatorWidgetState extends State<MainNavigatorWidget> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const ProfilePage(),
    const CoursesPage(),
    const ProjectPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 114, 121, 150),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Профиль",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Курсы",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Проекты",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
