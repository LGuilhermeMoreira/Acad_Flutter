import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Page'),
      ),
      body: Center(
        child: Container(
          // so é permitido a colocar cor dentro do boxdecoration
          //color: Colors.deepOrange[900],
          //altura
          height: 100,
          //largura
          width: 100,
          //margem dentro do widget
          padding: const EdgeInsets.all(10),
          //margem fora do widget
          margin: const EdgeInsets.all(10),
          //filho
          child: TextButton(
            child: Text(
              "faz o L",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onPressed: () {},
          ),
          //decoração
          decoration: BoxDecoration(
            //arredondando as bordas
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            image: null,
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(5, 10),
              ),
              BoxShadow(
                color: Colors.blue,
                blurRadius: 10,
                offset: Offset(-5, -10),
              ),
            ],
            color: Colors.red[400],
          ),
        ),
      ),
    );
  }
}
