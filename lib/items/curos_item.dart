import 'package:flutter/material.dart';

import 'package:pembayaranklp2/widget/curos.dart';

class CurosItem extends StatelessWidget {
  const CurosItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //digunakan untuk membuat jarak diantara sisi container dengan widget lainnya sehingga container akan menjorok ke bagian dalam.
      //dengan bagian kiri 20
      margin: const EdgeInsets.only(left: 20),
      //susunan widget dari atas ke bawah
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            //memanggil fungsi text
            'carousel slider',
            style: TextStyle(
              //mengubah warna text
              color: Colors.black,
              //mengubah ukuran text
              fontSize: 18,
              //mengubah ketebalan text
              fontWeight: FontWeight.bold,
            ),
          ),
          //memberikan jarak
          const SizedBox(
            height: 10,
          ),
          //membuat fungsi widged CovidCard
          RiwayatBody(),
        ],
      ),
    );
  }
}
