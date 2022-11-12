import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turistapp/src/pages/login_page.dart';
import 'package:turistapp/src/pages/widgets/headers.dart';
import 'package:turistapp/src/repositorio/usuario_registrar.dart';

class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({super.key});

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  final userName = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();

  UsuarioRegistrar usuarioReg = UsuarioRegistrar();

  FirebaseAuth fAuth = FirebaseAuth.instance;

  void guardarUsuario(BuildContext context) async {
    Future<bool> resultado =
        usuarioReg.registrarUsuario(email.text, password.text);
    Navigator.of(context).pushNamed("/log");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const HeaderCurvo(),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: const Offset(0, 70),
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
                          //controller: userName,
                          decoration:
                              const InputDecoration(labelText: "Nombre"),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          controller: email,
                          obscureText: false,
                          decoration: InputDecoration(labelText: "Correo"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: true,
                          decoration:
                              const InputDecoration(labelText: "Contraseña"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: "Repetir Contraseña"),
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
                mainAxisAlignment: MainAxisAlignment.center,
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
                        minimumSize:
                            MaterialStateProperty.all(const Size(75, 35)),
                        fixedSize:
                            MaterialStateProperty.all(const Size(290, 50)),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffCCCCCC))),
                    onPressed: () {
                      guardarUsuario(context);
                    },
                    child: const Text(
                      "Regístrate",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  // const Spacer(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showRegistro(BuildContext context) {
    Navigator.of(context).pushNamed("/log");
  }
}
