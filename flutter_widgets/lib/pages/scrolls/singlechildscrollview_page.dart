import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {
  const SinglechildscrollviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Singlechildscrollview Page'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: 100,
                  color: Colors.orange,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: 100,
                  color: Colors.deepOrangeAccent,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: 100,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
