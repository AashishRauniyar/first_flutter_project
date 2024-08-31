import 'package:first_project/pages/first_page.dart';
import 'package:first_project/pages/home_page.dart';
import 'package:first_project/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // functions and methods

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstPage': (context) => FirstPage(),
        '/homePage': (context) => HomePage(),
        '/settingsPage': (context) => SettingsPage(),
        
      },
    );
  }
}
