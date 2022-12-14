import 'package:flutter/material.dart';
import 'package:turistapp/src/pages/widgets/headers.dart';

//import 'package:flutter_modulo1_fake_backend/models.dart';

class Quindio extends StatefulWidget {
  //final User loggedUser;
  const Quindio({super.key});

  @override
  State<Quindio> createState() => _QuindioState();
}

class _QuindioState extends State<Quindio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      _MainScroll()
      //_listaSitios()
    ]));
    //body: _titulo(),
  }
}

//-----------SCROLL

class _MainScroll extends StatelessWidget {
  final departamentos = [
    _ListaItems(
      'Valle del Cocora',
      Color.fromARGB(141, 95, 184, 125),
      DecorationImage(
          image: AssetImage("assets/images/cocora.jpg"), fit: BoxFit.fill),
    ),
    _ListaItems(
      'Parque del Café',
      Color.fromARGB(255, 175, 194, 208),
      DecorationImage(
          image: AssetImage("assets/images/parquecafe.jpg"), fit: BoxFit.fill),
    ),
    _ListaItems(
      'Panaca',
      Color.fromARGB(255, 206, 208, 175),
      DecorationImage(
          image: AssetImage("assets/images/panaca.jpg"), fit: BoxFit.fill),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPersistentHeader(
            floating: true,
            delegate: _SliverCustomHeaderDelegate(
                200,
                Container(alignment: Alignment.centerLeft, child: _titulo()),
                200)),

        // SliverAppBar(
        //     floating: true,
        //     title: Text(
        //       'Hola',
        //       style: TextStyle(color: Color.fromARGB(255, 106, 106, 106)),
        //     ),
        //     backgroundColor: Color.fromARGB(168, 192, 219, 234)),

        SliverList(
            delegate: SliverChildListDelegate([
          ...departamentos,
          SizedBox(
            height: 200,
          )
        ]))
      ],
    );
  }
}

class _SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverCustomHeaderDelegate(
      @required this.minHeight, @required this.child, @required this.maxHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(_SliverCustomHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

//--------------------------------------- HEADER

class _titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      const HeaderHome(),
      Transform.translate(
        offset: const Offset(19, 74),
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

//--------------------------------------- LISTA DE DATOS

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
//---------------------------------------------------- CONTAINER
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
      margin: EdgeInsets.all(15),
      child: Container(
          child: TextButton(
            onPressed: () {
              _showCocora(context);
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

  void _showCocora(BuildContext context) {
    Navigator.of(context).pushNamed("/quindio/cocora");
  }
}
