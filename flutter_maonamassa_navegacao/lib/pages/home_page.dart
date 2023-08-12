import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/detalhe',
                    arguments: "Parametro via named",
                  );
                },
                child: Text("Detalhe - via Named")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetalhePage(
                      parametro: "Parametro y",
                    ),
                    settings: RouteSettings(
                        name: '/detalhe', arguments: "Parametro y"),
                  ));
                },
                child: Text("Detalhe - via Page")),
            TextButton(
                onPressed: () async {
                  var message =
                      await Navigator.of(context).pushNamed('/detalhe2');
                  print("Messagem recebida da pagina ${message}");
                },
                child: Text("Detalhe 2 - e aguardar"))
          ],
        ),
      ),
    );
  }
}
