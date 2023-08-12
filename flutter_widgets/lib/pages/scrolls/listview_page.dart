import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('listview page'),
      ),
      // body: ListView(
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.purple,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.black,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.deepOrangeAccent,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.purple,
      //     ),
      //   ],
      // ),
      // body: ListView.builder(
      // itemBuilder: (context, index) {
      //   return ListTile(
      //     tileColor: Colors.white,
      //     title: Text("Contato $index"),
      //     subtitle: Text("${index / 2}"),
      //     leading: CircleAvatar(),
      //   );
      // },
      //   itemCount: 30,
      // ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.white,
              title: Text("Contato $index"),
              subtitle: Text("${index / 2}"),
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://docs.flutter.dev/assets/images/dash/BigDashAndLittleDash.png'),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.red,
              //tamanho da barra de separação
              thickness: 1,
            );
          },
          itemCount: 20),
    );
  }
}
