import 'package:flutter/material.dart';

// FORMA NÃO CONVENCIONAL

// class Detalhe extends StatelessWidget {
//   const Detalhe({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final param =
//         ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           param?["id"] ?? "não tem nada",
//         ),
//       ),
//       body: Center(
//         child: Column(),
//       ),
//     );
//   }
// }

class Detalhe extends StatefulWidget {
  const Detalhe({super.key});

  @override
  State<Detalhe> createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  int? id;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final param =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      setState(() {
        id = param?['id'] ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detalhe"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: null, child: Text("valor do id: $id"))
          ],
        ),
      ),
    );
  }
}
