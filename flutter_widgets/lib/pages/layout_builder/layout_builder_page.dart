import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

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
          title: const Text('Layout Builder'),
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red[200],
                // usando mediaquery
                // width: realBodyScreenWidth * .5,
                // height: realBodyScreenHeight * .5,
                //utilizando layout builder
                width: constraints.maxWidth * .50,
                height: constraints.maxHeight * .50,
              ),
              Container(
                color: Colors.blue[200],
                width: constraints.maxWidth,
                height: constraints.maxHeight * .5,
              ),
            ],
          ),
        ));
  }
}
