import 'package:flutter/material.dart';
import 'package:turistapp/home_page.dart';
import 'package:turistapp/registro.dart';
import 'package:turistapp/splash_screen.dart';

void main() => runApp(const TuristApp());

class TuristApp extends StatelessWidget {
  const TuristApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
