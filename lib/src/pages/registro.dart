import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turistapp/src/pages/headers_page.dart';
import 'package:turistapp/src/pages/widgets/headers.dart';

void main() => runApp(Registro());

class Registro extends StatelessWidget {
  Registro();

  final userName = TextEditingController();
  final password = TextEditingController();

  FirebaseAuth fAuth = FirebaseAuth.instance;

  void guardarUsuario() {
    fAuth.createUserWithEmailAndPassword(
        email: userName.text, password: password.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HeaderCurvo(),
          Column(
            children: [
              Center(
                heightFactor: 1.9,
                child: Image.asset(
                  "assets/images/oso negro.png",
                  height: 150,
                  width: 150,
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 70,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(0, 70),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: "Nombre"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: "Correo"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: "Contraseña"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration:
                              InputDecoration(labelText: "Repetir Contraseña"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 670,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                        elevation: MaterialStateProperty.all(4),
                        minimumSize: MaterialStateProperty.all(Size(75, 35)),
                        fixedSize: MaterialStateProperty.all(Size(290, 50)),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffCCCCCC))),
                    onPressed: () {
                      _showLogin(context);
                    },
                    child: Text(
                      "Regístrate",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showLogin(BuildContext context) {
    Navigator.of(context).pushNamed("/");
  }
}
