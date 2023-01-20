import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TersimpanPage extends StatelessWidget {
  const TersimpanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Save',
          style: TextStyle(
            color: Color.fromARGB(162, 0, 0, 0),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 236, 32, 40),
      ),
      body: RiwayatBody(),
    );
  }
}

class RiwayatBody extends StatelessWidget {
  const RiwayatBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 7 / 10,
            child: Lottie.asset("assets/anim/chest.json"),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              child: Center(
                child: Text(
                  'Kamu Tidak Memiliki Data Transaksi Yang Disimpan, Ayo Mulai Transaksi dan Simpan Transaksinya',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
