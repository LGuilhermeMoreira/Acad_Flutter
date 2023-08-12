import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row and Column Page'),
        centerTitle: true,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.infinity,
        color: Colors.purple[200],
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       color: Colors.red,
        //       height: 200,
        //       width: 22,
        //     ),
        //     Text("elemento 1"),
        //     Text("elemento 2"),
        //     Text("elemento 3"),
        //     Text("elemento 1"),
        //     Text("elemento 2"),
        //     Text("elemento 3"),
        //     Text("elemento 1"),
        //     Text("elemento 2"),
        //     Text("elemento 3"),
        //     Text("elemento 1"),
        //     Text("elemento 2"),
        //     Text("elemento 3"),
        //   ],
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          //textDirection: ,

          children: [
            Text("elemento 1"),
            Text("elemento 2"),
            Text("elemento 3"),
            Text("elemento 1"),
            Text("elemento 2"),
          ],
        ),
      ),
    );
  }
}
