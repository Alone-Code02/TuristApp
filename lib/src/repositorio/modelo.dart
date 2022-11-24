import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:turistapp/src/pages/maps/map_style.dart';

class MappController {
  void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(mapStyle);
  }
}
