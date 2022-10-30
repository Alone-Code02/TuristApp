import 'package:flutter/material.dart';

void main() => runApp(const Registro());

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(65.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 400,

              decoration: BoxDecoration(
                  color: Color.fromARGB(41, 83, 126, 179),
                  borderRadius: BorderRadius.all(Radius.circular(45))),

              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(labelText: "Correo"),
                textAlign: TextAlign.left,
              ),
              // TextField(
              //   decoration: InputDecoration(labelText: "Contraseña"),
              // )
            ),
          ],
        ),
      ),
    );
  }
}
