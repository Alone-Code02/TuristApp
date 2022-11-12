import 'package:flutter/material.dart';
//import 'package:flutter_modulo1_fake_backend/user.dart';
//import 'package:turistapp/src/connection/server_controller.dart';
import 'package:turistapp/src/pages/widgets/headers.dart';

class ForgetPage extends StatefulWidget {
  //ServerController serverController;
  // BuildContext context;
  // LoginPage(this.serverController, this.context, {super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  bool _loading = false;
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String userName = "";
  String password = "";
  final String _errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Stack(
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
                const Text(
                  "Recupera",
                  style: TextStyle(fontSize: 40),
                ),
                const Text(
                  "tu contraseña.",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: const Offset(0, 100),
                  child: Card(
                    elevation: 5,
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
                            decoration:
                                const InputDecoration(labelText: "Correo"),
                            onSaved: (value) {
                              userName = value!;
                            },
                            validator: ((value) {
                              if (value != null) {
                                return "Este Campo es obligatorio.";
                              }
                            }),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                labelText: "Repite el correo"),
                            onSaved: (value) {
                              password = value!;
                            },
                            validator: ((value) {
                              if (value != null) {
                                return "Este Campo es obligatorio.";
                              }
                            }),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: Offset(55, 650),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                    elevation: MaterialStateProperty.all(4),
                    minimumSize: MaterialStateProperty.all(const Size(75, 35)),
                    fixedSize: MaterialStateProperty.all(const Size(290, 50)),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(107, 85, 171, 219))),
                onPressed: () => _login(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Enviar correo.",
                      style: TextStyle(fontSize: 20),
                    ),
                    if (_loading)
                      Container(
                        height: 20,
                        width: 20,
                        margin: const EdgeInsets.only(left: 60),
                        child: const CircularProgressIndicator(
                          color: Color.fromARGB(95, 194, 208, 216),
                        ),
                      )
                  ],
                ),
              ),
            ),
            if (_errorMessage.isNotEmpty)
              Text(
                _errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            Transform.translate(
              offset: Offset(100, 700),
            ),
          ],
        ),
      ),
    );
  }

  _login(BuildContext context) async {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }
  }
}
