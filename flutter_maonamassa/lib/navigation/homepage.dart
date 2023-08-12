import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navigation/page2.dart';
// import 'package:flutter_maonamassa/navigation/page1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PageTwo(),
                      settings: RouteSettings(name: "page2"),
                    ));
                  },
                  child: Text("Page 2 - Via Page"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/page2');
                  },
                  child: Text("Page 2 - Named"))),
          Center(
            child: Container(
              child: Text("iai comparsa"),
              width: 100,
            ),
          )
        ],
      ),
      drawer: null,
      floatingActionButton: null,
    );
  }
}
