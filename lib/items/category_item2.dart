import 'package:flutter/material.dart';
import 'package:pembayaranklp2/category/hiburan_page.dart';
import 'package:pembayaranklp2/category/internet_page.dart';
import 'package:pembayaranklp2/category/riwayat_page.dart';
import 'package:pembayaranklp2/category/tiket_page.dart';
import 'package:pembayaranklp2/category/topup_page.dart';
import 'package:pembayaranklp2/category/tersimpan_page.dart';
import 'package:pembayaranklp2/category/unggulan_page.dart';

import '../../models/category_model.dart';

class CategoryItem2 extends StatefulWidget {
  const CategoryItem2({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryItem2> createState() => _CategoryItem2State();
}

class _CategoryItem2State extends State<CategoryItem2> {
  List<Widget> listCategory = [
    InternetPage(),
    TopUPPage(),
    TiketPage(),
    HiburanPage(),
    UnggulanPage(),
    TersimpanPage(),
    RiwayatPage(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kategori Paket',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: categoryModel.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 25,
                  childAspectRatio: 60 / 92,
                  crossAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return listCategory[index];
                      }));
                    },
                    child: Container(
                      height: 55,
                      width: 182,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 53,
                            height: 53,
                            decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: Color.fromARGB(28, 255, 235, 59)),
                            child: Image.asset(
                              categoryModel[index].icons,
                              width: 32,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            categoryModel[index].text,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ));
  }
}
