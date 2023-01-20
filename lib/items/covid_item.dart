import 'package:flutter/material.dart';
import 'package:pembayaranklp2/card/covid_card.dart';

class CovidItem extends StatelessWidget {
  const CovidItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Tanggap COVID-19',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CovidCard()
        ],
      ),
    );
  }
}
