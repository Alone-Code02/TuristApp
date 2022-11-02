// import 'dart:io';
// import 'dart:js';

import 'package:flutter/material.dart';

//import 'package:flutter_modulo1_fake_backend/models.dart';

class HomePage extends StatefulWidget {
  //final User loggedUser;
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [_listaSitios()])
        //body: _titulo(),
        );
  }
}
//--------------------------------------- HEADER

class _titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Transform.translate(
        offset: Offset(19, 74),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/oso negro.png",
              height: 50,
              width: 50,
            ),
            //IconButton(onPressed: () {}, icon: icon)
          ],
        ),
      )
    ]);
  }
}

//---------------------------------------

class _listaSitios extends StatelessWidget {
  final departamentos = [
    _ListaItems(
      'Quindío',
      Color.fromARGB(141, 95, 184, 125),
      DecorationImage(
          image: AssetImage("assets/images/cocora.jpg"), fit: BoxFit.fill),
    ),
    _ListaItems(
      'Risaralda',
      Color.fromARGB(255, 175, 194, 208),
      DecorationImage(
          image: AssetImage("assets/images/termales.jpg"), fit: BoxFit.fill),
    ),
    _ListaItems(
      'Valle del Cauca',
      Color.fromARGB(255, 206, 208, 175),
      DecorationImage(
          image: AssetImage("assets/images/valle.jpg"), fit: BoxFit.fill),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: departamentos.length,
        itemBuilder: (BuildContext context, int index) => departamentos[index]);
  }
}

void _showQuindio(BuildContext context) {
  Navigator.of(context).pushNamed("/quindio");
}

void _showRisaralda(BuildContext context) {
  Navigator.of(context).pushNamed("/risaralda");
}

void _showValle(BuildContext context) {
  Navigator.of(context).pushNamed("/valle");
}

class _ListaItems extends StatelessWidget {
  final String nombre;
  final Color color;
  final DecorationImage photo;
  //final BuildContext ruta;

  const _ListaItems(
    this.nombre,
    this.color,
    this.photo,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
      margin: EdgeInsets.all(15),
      child: Container(
          child: TextButton(
            onPressed: () {
              _showQuindio(context);
            },
            child: Transform.translate(
              offset: Offset(-70, 60),
              child: Text(nombre,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          padding: EdgeInsets.all(20),
          height: 200,
          width: 100,
          decoration: BoxDecoration(
              color: color,
              image: photo,
              borderRadius: (BorderRadius.circular(35)))),
    );
  }
}
