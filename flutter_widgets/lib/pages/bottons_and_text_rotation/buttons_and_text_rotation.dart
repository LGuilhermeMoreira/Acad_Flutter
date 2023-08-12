import 'package:flutter/material.dart';

class ButtonsAndTextRotation extends StatelessWidget {
  const ButtonsAndTextRotation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Botões e Rotação de texto',
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        return Container(
          width: constraint.maxWidth,
          height: constraint.maxHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                  child: Text("Texto que gira"),
                  padding: EdgeInsets.all(10),
                  color: Colors.purple[100],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("text button"),
                // duas formas de decorar o butao
                style: TextButton.styleFrom(
                    // cor primaria do butao
                    primary: Colors.black,
                    // bora em volta do butao
                    padding: EdgeInsets.all(40),
                    // formato do butao
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    minimumSize: Size(100, 200)),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.add_reaction_rounded)),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.accessible),
                label: Text("alarme"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Elevated button"),
                // primeira forma de estilizar o botao
                // style: ElevatedButton.styleFrom(
                //     // cor primaria do butao
                //     primary: Colors.orange,
                //     // bora em volta do butao
                //     padding: EdgeInsets.all(40),
                //     // formato do butao
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(30))),
                //     minimumSize: Size(100, 100)),

                // segunda forma
                style: ButtonStyle(
                  // define qual cor o botão fica ao ser pressionado
                  //overlayColor: MaterialStateProperty.all(Colors.green),
                  //* define o menor tamanho geral para o botão
                  //minimumSize: MaterialStateProperty.all(Size(100, 90)),
                  //* define um tamanho de acordo com cada caso butao
                  minimumSize: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Size(100, 150);
                    }

                    return Size(90, 90);
                  }),
                  //backgroundColor: MaterialStateProperty.all(Colors.red),
                  // dessa maneira consigo controlar cada coisa do botao
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    // caso seja precionado
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                    // caso o mause passe por cima
                    else if (states.contains(MaterialState.hovered)) {
                      return Colors.indigo[200];
                    }

                    return Colors.deepPurpleAccent[100];
                  }),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text("INKWELL"),
              ),
              GestureDetector(
                child: Text("Gesture Detector"),
                onTap: () {
                  print("gesture printado");
                },
              ),
              // desenvolver seu proprio botao
              Container()
            ],
          ),
        );
      }),
    );
  }
}
