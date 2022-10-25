import 'package:flutter/material.dart';
import 'package:turistapp/nuevo.dart';
import 'package:turistapp/splash_screen.dart';

void main() => runApp(const TuristApp());

class TuristApp extends StatelessWidget {
  const TuristApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Material App',
      home: MyApp(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Material App Bar'),
      //   ),
      //   body: ListView(children: <Widget>[
      //     Image.asset(
      //       "assets/images/2.jpg",
      //       fit: BoxFit.cover,
      //     ),
      //   ]),
      // ),
    );
  }
}
