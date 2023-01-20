import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

LatLng currentLocation = const LatLng(25.1193, 55.3773);

class HistoryPage extends StatefulWidget {
  HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RiwayatBody(),
    );
  }
}

class RiwayatBody extends StatefulWidget {
  RiwayatBody({
    Key? key,
  }) : super(key: key);

  @override
  State<RiwayatBody> createState() => _RiwayatBodyState();
}

class _RiwayatBodyState extends State<RiwayatBody> {
  late GoogleMapController _mapController;

  Map<String, Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: currentLocation,
        zoom: 14,
      ),
      onMapCreated: (controller) {
        _mapController = controller;
        addMarker('test', currentLocation);
      },
      markers: _markers.values.toSet(),
    );
  }

  addMarker(String id, LatLng location) {
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
    );

    _markers[id] = marker;
    setState(() {});
  }
}
