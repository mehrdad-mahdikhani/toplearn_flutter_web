import 'package:flutter/material.dart';
import 'package:web_application/src/presentation/views/detail/detail_desktop_screen.dart';
import 'package:web_application/src/presentation/views/home/home_desktop_screen.dart';
import 'package:web_application/src/presentation/views/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
