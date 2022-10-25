import 'package:flutter/material.dart';
import 'package:turistapp/src/pages/headers_page.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HeadersPage(),
    );
  }
}
