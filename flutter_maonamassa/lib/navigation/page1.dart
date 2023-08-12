import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navigation/page2.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PageTwo(),
                      settings: RouteSettings(name: "Page2")));
                },
                child: Text("Page 2 - Via Page"))),
      ]),
      drawer: null,
      floatingActionButton: null,
    );
  }
}
