import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navigation_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Detalhe(),
                //     settings: RouteSettings(
                //       name: "detalhe",
                //       arguments: {"id": 20},
                //     )));
                Navigator.of(context).pushNamed("/navegacao_params/detalhe",
                    arguments: {"id": 200});
              },
              child: Text(
                "detalhes",
              ),
            )
          ],
        ),
      ),
    );
  }
}
