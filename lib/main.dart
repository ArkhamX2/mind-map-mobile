import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mind_map/core/constant_values/routes.dart';
import 'package:mind_map/core/navigator/navigator.dart';
import 'package:mind_map/core/presentation/UI/mind_loading_widget.dart';
import 'package:mind_map/feature/education/presentation/pages/education_page.dart';
import 'package:mind_map/feature/profile/presentation/pages/profile_page.dart';
import 'package:mind_map/feature/projects/presentation/pages/projects_page.dart';
import './injection_container.dart' as di;

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Карта знаний',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 101, 59, 159),
        ),
        fontFamily: 'Inter',
      ),
      home: const _SplashScreen(),
      routes: {
        mainRoute: (context) => const MainNavigatorWidget(),
        profileRoute: (context) => const ProfilePage(),
        coursesRoute: (context) => const EducationPage(),
        projectsRoute: (context) => const ProjectsPage(),
      },
    );
  }
}

class _SplashScreen extends StatefulWidget {
  const _SplashScreen();

  @override
  State<_SplashScreen> createState() => __SplashScreenState();
}

class __SplashScreenState extends State<_SplashScreen> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    Future.delayed(const Duration(seconds: 3, milliseconds: 500)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Initializer()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(child: MindLoadingWidget()),
    );
  }
}

class Initializer extends StatefulWidget {
  const Initializer({super.key});

  @override
  State<Initializer> createState() => _InitializerState();
}

class _InitializerState extends State<Initializer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MainNavigatorWidget();
  }
}
