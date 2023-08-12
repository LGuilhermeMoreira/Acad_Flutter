import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navigation/page3.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PageThree(),
                      settings: RouteSettings(name: "page3"),
                    ));
                  },
                  child: Text("page 3 - Via Page"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("pop"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('page3');
                  },
                  child: Text("Page 3 - Named"))),
        ],
      ),
      drawer: null,
      floatingActionButton: null,
    );
  }
}
