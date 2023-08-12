import 'package:flutter/material.dart';

class Detalhe2Page extends StatelessWidget {
  const Detalhe2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pop("botao de voltar funcionou");
            },
            child: Text("voltar")),
      ),
    );
  }
}
