import 'package:flutter/material.dart';
import 'package:web_application/src/config/app_theme.dart';
import 'package:web_application/src/presentation/views/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      title: 'Flutter Demo',
      home: const HomePage(),
    );
  }
}
