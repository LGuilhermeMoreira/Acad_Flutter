import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/images/Images_pages.dart';
import 'package:flutter_maonamassa/pages/home_page.dart';
//import 'package:flutter_maonamassa/pages/container_page.dart';
//import 'package:flutter_maonamassa/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
