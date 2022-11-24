import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:turistapp/src/repositorio/modelo.dart';

class CocoraMaps extends StatefulWidget {
  const CocoraMaps({super.key});

  @override
  State<CocoraMaps> createState() => _CocoraMapsState();
}

class _CocoraMapsState extends State<CocoraMaps> {
  final _controller = MappController();
  final _initialCameraPsition = const CameraPosition(
      target: LatLng(4.6362473386339484, -75.4848088541154), zoom: 12);

  final Set<Marker> marcador = Set();

  @override
  Widget build(BuildContext context) {
    setState(() {
      marcador.add(Marker(
          markerId: const MarkerId("Cocora"),
          position: const LatLng(4.6362473386339484, -75.4848088541154),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
          infoWindow: const InfoWindow(
              title: ("Cocora"), snippet: ("Temperatura 18C"))));
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valle del Cocora."),
      ),
      body: GoogleMap(
        onMapCreated: _controller.onMapCreated,
        initialCameraPosition: _initialCameraPsition,
        compassEnabled: true,
        mapType: MapType.normal,
        markers: marcador,
      ),
    );
  }
}
