import 'package:flutter/material.dart';
import 'home/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '找对',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.pink,
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            actionsIconTheme: IconThemeData(
              color: Colors.white,
            )),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.transparent,
        ),
      ),
      home: const MyHomePage(title: '找对'),
      // home: const MinePage(),
    );
  }
}
