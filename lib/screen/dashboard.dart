import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pembayaranklp2/card/sim_card.dart';
import 'package:pembayaranklp2/items/category_item.dart';
import 'package:pembayaranklp2/items/covid_item.dart';
import 'package:pembayaranklp2/items/curos_item.dart';
import 'package:pembayaranklp2/items/news_item.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);

      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print('gagal, $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffEC2028),
        elevation: 0,
        titleTextStyle: TextStyle(fontWeight: FontWeight.normal),
        title: Row(
          children: const [
            Text(
              'Hai, ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            Text(
              'Liyani',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          GestureDetector(
            child: Image.asset(
              'assets/images/head_icon.png',
              color: Colors.white,
            ),
            onTap: () {
              takeImage(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 110,
                ),
                Container(
                  width: double.infinity,
                  height: 143,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/bg_header.png'))),
                ),
                SimCardPage(),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25,
                bottom: 20,
              ),
              color: Color(0xffF1F2F6),
              width: double.infinity,
              height: 8,
            ),
            CategoryItem(),
            SizedBox(
              height: 32,
            ),
            NewsItem(),
            SizedBox(
              height: 32,
            ),
            CovidItem(),
            const SizedBox(
              height: 32,
            ),
            const CurosItem()
          ],
        ),
      ),
    );
  }

  takeImage(mContext) {
    return showDialog(
      context: mContext,
      builder: (context) {
        return SimpleDialog(
          title: const Text(
            "pilih image",
            style: TextStyle(
              color: Color.fromARGB(255, 236, 32, 40),
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            SimpleDialogOption(
              onPressed: () => pickImage(ImageSource.gallery),
              child: const Text(
                "ambil foto melalui gallery",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SimpleDialogOption(
              onPressed: () => pickImage(ImageSource.camera),
              child: const Text(
                "ambil foto melalui kamera",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SimpleDialogOption(
              child: const Text(
                "Batal",
                style: TextStyle(color: Colors.grey),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }
}
