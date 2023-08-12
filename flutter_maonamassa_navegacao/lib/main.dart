import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/core/navigator_observer_custom.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe2_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorObservers: [NavigatorObserverCustom()],
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 158, 139, 190)),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,

      //Menos utilizado
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => HomePage(),
            settings: settings,
          );
        }

        if (settings.name == '/detalhe') {
          final parametro = settings.arguments as String?;
          return MaterialPageRoute(
            builder: (context) => DetalhePage(
              parametro: parametro ?? "Não teve parametro",
            ),
            settings: settings,
          );
        }
      },

      //Maior utilizado
      routes: {
        '/': (context) => HomePage(),
        '/detalhe': (context) => DetalhePage(
              parametro: "via name com routes",
            ),
        '/detalhe2': (context) => Detalhe2Page()
      },
    );
  }
}
