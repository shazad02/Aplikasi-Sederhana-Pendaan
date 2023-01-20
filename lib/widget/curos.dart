import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class RiwayatBody extends StatelessWidget {
  final List<String> imgList = [
    'https://images-loyalty.ovo.id/public/deal/98/62/l/27946.jpg?ver=1',
    'https://images-loyalty.ovo.id/public/deal/38/45/l/31172.jpg?ver=1',
    'https://images-loyalty.ovo.id/public/deal/51/79/l/28111.jpg?ver=1',
    'https://foto.kontan.co.id/Pbhj-uHrRvdLJNX78JjhHgKC6BM=/smart/filters:format(webp)/2022/02/04/1448053337p.jpg',
    'https://nos.jkt-1.neo.id/mcdonalds/promos/August2021/Mn08p9yHET3UVgw88Lqs.jpg',
    'https://images-loyalty.ovo.id/public/deal/57/67/l/32075.jpg?ver=1'
  ];

  RiwayatBody({super.key});

  @override
  Widget build(BuildContext context) {
    //agar ditengah
    return CarouselSlider(
      //opsi untuk carousel
      options: CarouselOptions(
        //agar bisa di auto play
        autoPlay: true,
        //gunakan saat tidak ada ketinggian yang di nyatakan atau height
        aspectRatio: 2.0,
        //agar lebih maju animasi saat di pilih
        enlargeCenterPage: true,
      ),
      //mengambil list
      items: imgList
          .map((item) => Container(
                margin: const EdgeInsets.all(5.0),
                //mengatur Pendekatan lain dalam lengkungan tiap sudut dari sebuah objek
                child: ClipRRect(
                    //membarikan border lengkungan
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    //agar fapat di tumpuk
                    child: Stack(
                      children: <Widget>[
                        //ambil gambar dari internet
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        //mengatur posisi
                      ],
                    )),
              ))
          .toList(),
    );
  }
}
