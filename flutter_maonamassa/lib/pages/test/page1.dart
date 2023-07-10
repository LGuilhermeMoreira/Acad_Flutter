import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          "Page 1",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
