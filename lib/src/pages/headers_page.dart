import 'package:flutter/material.dart';
import 'package:turistapp/src/pages/widgets/headers.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HeaderCurvo(),
        ],
      ),
    );
  }
}
