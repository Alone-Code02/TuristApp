import 'package:flutter/material.dart';
import 'package:turistapp/splash_screen.dart';
import 'package:turistapp/src/pages/deptos/quindio.dart';
import 'package:turistapp/src/pages/deptos/risaralda.dart';
import 'package:turistapp/src/pages/deptos/sitios/cocora.dart';
import 'package:turistapp/src/pages/deptos/sitios/parquecafe.dart';
import 'package:turistapp/src/pages/deptos/valle.dart';

import 'package:turistapp/src/pages/forget.dart';
import 'package:turistapp/src/pages/home_page.dart';
import 'package:turistapp/src/pages/login_page.dart';
import 'package:turistapp/src/pages/registro_page.dart';

//ServerController _serverController = ServerController();

class TuristApp extends StatelessWidget {
  const TuristApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        theme: ThemeData(fontFamily: "Nunito"),
        title: 'TuristApp',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          "/": (BuildContext context) => SplashScreen(),
          "/log": (BuildContext context) => LoginPage(),
          "/reg": (BuildContext context) => RegistroUsuario(),
          "/forget": (BuildContext context) => ForgetPage(),
          "/home": (BuildContext context) => HomePage(),
          "/quindio": (BuildContext context) => Quindio(),
          "/quindio/cocora": (BuildContext context) => Cocora(),
          "/quindio/parquecafe": (BuildContext context) => ParqueCafe(),
          "/risaralda": (context) => Risaralda(),
          "/valle": (context) => Valle(),
        }

        // ------
        // onGenerateRoute: (RouteSettings settings) {
        //   return MaterialPageRoute(builder: (BuildContext context) {
        //     // switch (settings.name) {
        //     // case "/":
        //     return LoginPage();
        //     //   case "/home":
        //     //     User userLogged = settings.arguments as User;
        //     //     return HomePage(userLogged);
        //     // }

        //------------
        );
  }
}
