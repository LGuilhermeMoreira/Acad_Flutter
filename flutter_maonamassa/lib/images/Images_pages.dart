import 'package:flutter/material.dart';

class ImagePages extends StatelessWidget {
  const ImagePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.blue[900],
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Image.asset(
                "assets/mario.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: const Image(
                image: NetworkImage(
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEho_cLt1d2sopagMWOCAUdyr-XyqFEkxInw3VMLdj85N3ZAdvJWGy_8oDLTADgta1azQ1E-Emu7-kJc8_Y8VuX6QO-ajlgq7kCHPSVsERvPRc-D-iu-8IUdBkWQkbQm4DiFQotUbLv-TJLGLo-7e9zy28N3EKKNQmKJkl5hMsnsYCzuJKFVk4736-Zy/s780/super-mario.webp"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 150,
              height: 150,
              //color: Colors.red,
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.all(10),
              child: Text(
                "Lucas",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7qZCtBK6cnSTzkdmiv-Rgjd1E_Ertt9SXcw&usqp=CAU"),
                    fit: BoxFit.contain),
              ),
            ),
            Container(
              height: 150,
              width: 150,
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.all(10),
              child: Text(
                "Luana",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu6htuHKnTyHYNnHhvgNLXIqQI-0DNp2p3Yg&usqp=CAU"),
                      fit: BoxFit.contain)),
            )
          ],
        ),
      ),
    );
  }
}
