// import 'dart:js';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:turistapp/src/pages/login_page.dart';
// import 'package:turistapp/src/pages/widgets/headers.dart';
// import 'package:turistapp/src/repositorio/usuario_registrar.dart';

// // ignore: must_be_immutable
// class Registro extends StatelessWidget {
//   Registro({super.key});

//   // final userName = TextEditingController();
//   // final password = TextEditingController();
//   // final email = TextEditingController();

//   UsuarioRegistrar usuarioReg = UsuarioRegistrar();

//   // FirebaseAuth fAuth = FirebaseAuth.instance;

//   // void guardarUsuario(BuildContext context) async {
//   //   bool resultado =
//   //       usuarioReg.registrarUsuario(email.text, password.text) as bool;
//   //   Navigator.push(
//   //       context, MaterialPageRoute(builder: (context) => LoginPage()));
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           const HeaderCurvo(),
//           Column(
//             children: [
//               Center(
//                 heightFactor: 1.9,
//                 child: Image.asset(
//                   "assets/images/oso negro.png",
//                   height: 150,
//                   width: 150,
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Transform.translate(
//                 offset: Offset(0, 70),
//                 child: Card(
//                   elevation: 3,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25.0),
//                   ),
//                   margin: const EdgeInsets.only(left: 40, right: 40),
//                   child: Padding(
//                     padding: const EdgeInsets.all(18.0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         TextFormField(
//                           //controller: userName,
//                           decoration: InputDecoration(labelText: "Nombre"),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           // controller: email,
//                           obscureText: true,
//                           decoration: InputDecoration(labelText: "Correo"),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           //controller: password,
//                           obscureText: true,
//                           decoration: InputDecoration(labelText: "Contraseña"),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           obscureText: true,
//                           decoration:
//                               InputDecoration(labelText: "Repetir Contraseña"),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     height: 670,
//                   ),
//                   ElevatedButton(
//                     style: ButtonStyle(
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(18.0),
//                         )),
//                         elevation: MaterialStateProperty.all(4),
//                         minimumSize: MaterialStateProperty.all(Size(75, 35)),
//                         fixedSize: MaterialStateProperty.all(Size(290, 50)),
//                         backgroundColor:
//                             MaterialStateProperty.all(Color(0xffCCCCCC))),
//                     onPressed: () {
//                       _showRegistro(context);
//                     },
//                     child: Text(
//                       "Regístrate",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ),
//                   Spacer(),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   void _showRegistro(BuildContext context) {
//     Navigator.of(context).pushNamed("/");
//   }
// }
