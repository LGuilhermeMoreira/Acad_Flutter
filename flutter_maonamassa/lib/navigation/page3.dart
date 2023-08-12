import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navigation/page4.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //   builder: (context) => PageFour(),
                    //   settings: RouteSettings(name: "Page4"),
                    // ));
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PageFour(),
                        settings: RouteSettings(name: "page4")));
                  },
                  child: Text("page 4 - Via Page"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("pop"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/page4');
                  },
                  child: Text("Page 4 - Named"))),
        ],
      ),
      drawer: null,
      floatingActionButton: null,
    );
  }
}
