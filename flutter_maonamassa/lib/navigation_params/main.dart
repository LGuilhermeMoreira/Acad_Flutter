import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navigation/homepage.dart' as navegacao;
import 'package:flutter_maonamassa/navigation/page1.dart';
import 'package:flutter_maonamassa/navigation/page2.dart';
import 'package:flutter_maonamassa/navigation/page3.dart';
import 'package:flutter_maonamassa/navigation/page4.dart';
import 'package:flutter_maonamassa/navigation_params/detalhe.dart';
import 'package:flutter_maonamassa/navigation_params/lista.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/navegacao_params',
      routes: {
        '/': (context) => navegacao.HomePage(),
        '/page1': (context) => PageOne(),
        '/page2': (context) => PageTwo(),
        '/page3': (context) => PageThree(),
        '/Page4': (context) => PageFour(),
        '/navegacao_params': (context) => Lista(),
        '/navegacao_params/detalhe': (context) => Detalhe()
      },
    );
  }
}
