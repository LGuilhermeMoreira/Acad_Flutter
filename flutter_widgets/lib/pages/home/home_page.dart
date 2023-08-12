import 'package:flutter/material.dart';

// criando o enum com as paginas de navegação
enum PopupMenuPages {
  container,
  test,
  rowColumn,
  scroll,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        // adicionando "widgets" que tem açoes na appbar
        // esse "widget" é um PopupMenuButton de PopupMenuPages(o enum feito)
        actions: [
          PopupMenuButton<PopupMenuPages>(
              // add descriçao do butao
              tooltip: "possiveis telas para caminhar",
              //alterando o icone default
              icon: Icon(Icons.read_more_sharp),
              //botando cor nos butoes
              color: Colors.white,
              // esse onSelected serve para simular a açao caso seja clicado
              onSelected: (PopupMenuPages value) {
                switch (value) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenuPages.test:
                    Navigator.of(context).pushNamed('/test');
                    break;
                  case PopupMenuPages.rowColumn:
                    Navigator.of(context).pushNamed('/row_column');
                    break;
                  case PopupMenuPages.scroll:
                    Navigator.of(context).pushNamed('/scroll/single');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                // esse widget precisa terotnar uma lista de PopupMenuItem de PopupMenuPages
                return <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem<PopupMenuPages>(
                    child: Text("container"),
                    value: PopupMenuPages.container,
                  ),
                  PopupMenuItem(
                    child: Text("test"),
                    value: PopupMenuPages.test,
                  ),
                  PopupMenuItem(
                    child: Text("row_column"),
                    value: PopupMenuPages.rowColumn,
                  ),
                  PopupMenuItem(
                    child: Text("scroll/single"),
                    value: PopupMenuPages.scroll,
                  )
                ];
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/media_query');
                },
                child: Text("Media Query")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/layout_builder');
                },
                child: Text("Layout Builder")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/button_text_rotation');
                },
                child: Text("Button and text rotation")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/scroll/listview');
                },
                child: Text("listview")),
          ],
        ),
      ),
    );
  }
}
