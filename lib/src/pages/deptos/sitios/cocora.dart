import 'package:flutter/material.dart';
import 'package:turistapp/src/pages/widgets/headers.dart';

void main() => runApp(const Cocora());

class Cocora extends StatelessWidget {
  const Cocora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          body: Stack(
        children: [
          HeaderHome(),
          Transform.translate(
            offset: Offset(40, 65),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0)),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/cocora.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: (BorderRadius.circular(35))),
                height: 300,
                width: 300,
              ),
            ),
          ),
          Center(
            child: Transform.translate(
              offset: Offset(0, 125),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(130),
                  height: 360,
                  width: 350,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(115, -95),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ciudad: Salento',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                  Text('Temperatura: 23 C',
                      style: TextStyle(color: Colors.white, fontSize: 19))
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, 310),
            child: Container(
              padding: EdgeInsets.all(37),
              child: Text(
                "El valle de Cocora es un paisaje natural localizado en la cordillera central de los Andes colombianos, específicamente en el departamento del Quindío, en el área de influencia del Parque nacional natural Los Nevados. Cuenta con algunas poblaciones del árbol nacional de Colombia, la palma de cera del Quindío (Ceroxylon quindiuense), así como de una gran variedad de flora y fauna, mucha de ella en peligro de extinción, protegida bajo el estatus de parque nacional natural. El valle, así como la localidad cercana de Salento, se ubican entre los principales destinos turísticos de Colombia.​",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      )),
    );
  }
}
