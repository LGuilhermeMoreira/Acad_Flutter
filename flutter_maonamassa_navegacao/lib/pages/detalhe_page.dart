import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  final String parametro;
  const DetalhePage({super.key, required this.parametro});

  @override
  Widget build(BuildContext context) {
    // Podemos passar via construtor para não nescessitar esse codigo abaixo
    //String? arg = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(parametro),
      ),
    );
  }
}
