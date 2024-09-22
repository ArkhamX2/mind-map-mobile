import 'package:flutter/material.dart';
import 'package:mind_map/feature/profile/presentation/widgets/about_widget.dart';
import 'package:mind_map/feature/profile/presentation/widgets/user_tag_list_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
      height: double.infinity,
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
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
              UserTagListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
