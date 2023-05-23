import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nossa primeira AppBar"),
        backgroundColor: Colors.deepPurpleAccent[100],
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: const Center(
        child: Text("Nosso primeiro body"),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Center(child: Text("Nosso primeiro drawer")),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Center(child: Text("Nosso primeiro endDrawer")),
      ),
    );
  }
}
