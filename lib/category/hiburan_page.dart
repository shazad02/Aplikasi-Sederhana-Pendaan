import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart';

class HiburanPage extends StatefulWidget {
  const HiburanPage({Key? key}) : super(key: key);

  @override
  State<HiburanPage> createState() => _HiburanPageState();
}

class _HiburanPageState extends State<HiburanPage> {
  //dapatkan Control peta untuk mengakses peta
  Completer<GoogleMapController> _googleMapController = Completer();
  CameraPosition? _cameraPosition;
  late LatLng _draggedLatlng;
  late LatLng _defaultLatLng;
  String _draggedAddress = "";

  @override
  void initState() {
    _init();
    super.initState();
  }

  _init() {
    //set default latlng for camera position
    _defaultLatLng = LatLng(11, 104);
    _draggedLatlng = _defaultLatLng;
    _cameraPosition = CameraPosition(
      target: _defaultLatLng,
      zoom: 17.5, //nomor view map
    );
    //peta akan dialihkan ke lokasi saya saat ini saat dimuat
    _gotoUserCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      //dapatkan tombol float untuk mengklik dan pergi ke lokasi saat ini
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 236, 32, 40),
        onPressed: () {
          _gotoUserCurrentPosition();
        },
        child: Icon(Icons.location_on),
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        _getmap(),
        _getCustomPin(),
        _showDraggedAddress(),
      ],
    );
  }

  Widget _showDraggedAddress() {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 236, 32, 40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: Text(
            _draggedAddress,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          )),
        ),
      ),
    );
  }

  //google map mengharuskan kita menginisialisasi posisi kamera
  Widget _getmap() {
    return GoogleMap(
      initialCameraPosition: _cameraPosition!,
      mapType: MapType.normal,
      onCameraIdle: () {
        //fungsi ini akan aktif saat pengguna berhenti menyeret peta
        //setiap kali pengguna menarik dan menghentikannya akan menampilkan alamat
        _getAddress(_draggedLatlng);
      },
      onCameraMove: (cameraPosition) {
        //fungsi ini akan terpicu ketika pengguna terus menyeret peta
        //setiap kali pengguna menyeret ini akan mendapatkan nilai latlng
        _draggedLatlng = cameraPosition.target;
      },
      onMapCreated: (GoogleMapController controller) {
        //fungsi ini akan terpicu saat peta terisi penuh
        if (!_googleMapController.isCompleted) {
          //atur pengontrol ke peta google saat sudah terisi penuh
          _googleMapController.complete(controller);
        }
      },
    ); //menginisialisasi posisi kamera untuk peta
  }

  Widget _getCustomPin() {
    return Center(
      child: Container(
        width: 150,
        child: Lottie.asset("assets/anim/pin.json"),
      ),
    );
  }

  //dapatkan alamat dari pin yang diseret
  Future _getAddress(LatLng position) async {
    //ini akan mencantumkan semua alamat di sekitar posisi
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark address =
        placemarks[0]; // dapatkan hanya alamat pertama dan terdekat
    String addresStr =
        "${address.street}, ${address.locality}, ${address.administrativeArea}, ${address.country}";
    setState(() {
      _draggedAddress = addresStr;
    });
  }

  //dapatkan lokasi pengguna saat ini dan atur kamera peta ke lokasi itu
  Future _gotoUserCurrentPosition() async {
    Position currentPosition = await _determineUserCurrentPosition();
    _gotoSpecificPosition(
        LatLng(currentPosition.latitude, currentPosition.longitude));
  }

  //pergi ke posisi tertentu dengan latlng
  Future _gotoSpecificPosition(LatLng position) async {
    GoogleMapController mapController = await _googleMapController.future;
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: position,
          zoom: 17.5,
        ),
      ),
    );
    //setiap kali kami menyeret pin , itu akan mencantumkan alamat di sini
    await _getAddress(position);
  }

  Future _determineUserCurrentPosition() async {
    LocationPermission locationPermission;
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    //periksa apakah pengguna mengaktifkan layanan untuk izin lokasi
    if (!isLocationServiceEnabled) {
      print("user don't enable location permission");
    }

    locationPermission = await Geolocator.checkPermission();

    //periksa apakah pengguna menolak lokasi dan coba lagi meminta izin
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        print("user denied location permission");
      }
    }

    //periksa apakah pengguna menolak izin selamanya
    if (locationPermission == LocationPermission.deniedForever) {
      print("user denied permission forever");
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  }
}
