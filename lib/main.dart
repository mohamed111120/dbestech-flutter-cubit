import 'package:dbestech/views/welcome_view/nav_pages/main_page.dart';
import 'package:flutter/material.dart';

import 'views/welcome_view/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
