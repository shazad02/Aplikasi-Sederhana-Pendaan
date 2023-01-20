import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pembayaranklp2/screen/logiin.dart';
import 'package:pembayaranklp2/widget/dimensions.dart';
import 'package:pembayaranklp2/widget/image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splash();
  }

  splash() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return LoginnScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 32, 40),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(Images.logo,
                width: MediaQuery.of(context).size.width / 2.5),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
          ]),
        ),
      ),
    );
  }
}
