import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final mediaQuery = MediaQuery.of(context);
    print("largura: ${MediaQuery.of(context).size.width}");
    print("altura: ${MediaQuery.of(context).size.height}");
    print("orientação: ${MediaQuery.of(context).orientation}");
    // tamanho da status bar
    final statusBarHeight = MediaQuery.of(context).padding.top;
    // tamanho da altura da tela sem a appbar, e sem a statusbar
    final realBodyScreenHeight =
        MediaQuery.of(context).size.height - statusBarHeight - kToolbarHeight;
    // tamanho da largura da tela
    final realBodyScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media query'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            width: realBodyScreenWidth * .5,
            height: realBodyScreenHeight * .5,
          ),
          Container(
            color: Colors.blue,
            width: realBodyScreenWidth,
            height: realBodyScreenHeight * .5,
          ),
        ],
      ),
    );
  }
}
