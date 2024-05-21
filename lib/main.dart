import 'package:flutter/material.dart';
import 'package:jobmage/home_page.dart';
import 'package:jobmage/screens/job_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      color: Colors.white,
      home: HomePage(),
    );
  }
}
