import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String text = 'my text';

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "alterar texto",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("comeback")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("homepagestatefull");
              },
              child: Text("homepagestatefull")),
        ],
      ),
    );
  }
}

class HomePageStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homePageStateFullState();
  }
}

class _homePageStateFullState extends State<HomePageStatefull> {
  String text = 'my text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "alterar texto",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  text = "another text";
                });
              },
              child: Text("trade name")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("comeback"))
        ],
      ),
    );
  }
}
