import 'package:flutter/material.dart';
import 'package:mind_map/core/constant_values/routes.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/feature/auth/presentation/pages/login_auth_page.dart';
import 'package:mind_map/resources/colors.dart';

class MainAuthPage extends StatefulWidget {
  const MainAuthPage({super.key});

  @override
  State<MainAuthPage> createState() => _MainAuthPageState();
}

class _MainAuthPageState extends State<MainAuthPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mainAuthBackgroundColor,
      body: _BodyWidget(),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: Icon here
          const SizedBox(
            height: 40,
          ),
          GardenButton(
            title: "Войти",
            event: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const LoginAuthPage(route: mainRoute),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
