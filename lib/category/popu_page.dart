import 'package:flutter/material.dart';
import 'package:pembayaranklp2/card/news_card.dart';
import 'package:pembayaranklp2/card/news_card2.dart';

class PopuPage extends StatefulWidget {
  const PopuPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PopuPage> createState() => _PopuPageState();
}

class _PopuPageState extends State<PopuPage> {
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
          'Unggulan',
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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 20,
              ),
              NewsCard2()
            ],
          ),
        ),
      ),
    );
  }
}
