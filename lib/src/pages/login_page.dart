import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turistapp/src/pages/home_page.dart';
import 'package:turistapp/src/pages/widgets/headers.dart';

class LoginPage extends StatefulWidget {
  //ServerController serverController;
  // BuildContext context;
  // LoginPage(this.serverController, this.context, {super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool _loading = false;
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final userName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  FirebaseAuth fAuth = FirebaseAuth.instance;

  final String _errorMessage = "";

  void validarUsuario() async {
    try {
      if (email.text.isNotEmpty && password.text.isNotEmpty) {
        final user = await fAuth.signInWithEmailAndPassword(
            email: email.text, password: password.text);
        if (user != null) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        }
      } else {
        mostrarMensaje("Datos incorrectos");
      }
    } catch (e) {
      mostrarMensaje("Acceso Denegado$e");
    }
  }

  void mostrarMensaje(String mensaje) {
    final pantalla = ScaffoldMessenger.of(context);
    pantalla.showSnackBar(SnackBar(
      content: Text(mensaje),
    ));
  }

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
                  "Bienvenido",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "a TuristApp.",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: const Offset(0, 120),
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
                            controller: email,
                            decoration: const InputDecoration(
                                labelText: "Usuario / Correo"),
                            onSaved: (value) {},
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
                            controller: password,
                            obscureText: true,
                            decoration:
                                const InputDecoration(labelText: "Contraseña"),
                            onSaved: (value) {},
                            validator: ((value) {
                              if (value != null) {
                                return "Este Campo es obligatorio.";
                              }
                            }),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextButton(
                              onPressed: (() {
                                _showForget(context);
                              }),
                              child: const Text("Olvidaste tu contraseña?.")),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: const Offset(55, 650),
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
                onPressed: () {
                  validarUsuario();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Iniciar Sesión",
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
            Transform.translate(
              offset: const Offset(100, 700),
              child: Row(
                children: [
                  const Text("No tienes cuenta? "),
                  TextButton(
                      onPressed: (() {
                        _showRegister(context);
                      }),
                      child: const Text("Regístrate.")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//   _login(BuildContext context) {
//     Navigator.of(context).pushNamed("/home");
//   }
}

void _showRegister(BuildContext context) {
  Navigator.of(context).pushNamed("/reg");
}

void _showForget(BuildContext context) {
  Navigator.of(context).pushNamed("/forget");
}

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   widget.serverController.init(widget.context);
  // }

