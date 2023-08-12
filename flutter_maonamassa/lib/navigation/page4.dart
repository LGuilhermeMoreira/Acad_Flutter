import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navigation/page1.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushAndRemoveUntil(
                    //     MaterialPageRoute(
                    //       settings: RouteSettings(name: "page1"),
                    //       builder: (context) => PageOne(),
                    //     ),
                    //     ModalRoute.withName("page2"));

                    // removendo todas as paginas

                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          settings: RouteSettings(name: "page1"),
                          builder: (context) => PageOne(),
                        ),
                        //(route) => route.isFirst);
                        (route) => false);
                  },
                  child: Text("page 1 - Via Page"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("pop"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/page1', ModalRoute.withName('page2'));
                  },
                  child: Text("Page 1 - Named"))),
        ],
      ),
      drawer: null,
      floatingActionButton: null,
    );
  }
}
