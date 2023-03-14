import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pembayaranklp2/items/category_item2.dart';
import 'package:pembayaranklp2/profile/acc_page.dart';
import 'package:pembayaranklp2/profile/code_page.dart';
import 'package:pembayaranklp2/profile/notif_page.dart';
import 'package:pembayaranklp2/screen/logiin.dart';
import 'package:pembayaranklp2/screen/regis.dart';

class ProfliePage extends StatelessWidget {
  const ProfliePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 158, 36, 36),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Profile',
            style: TextStyle(
              color: Color.fromARGB(162, 0, 0, 0),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 205, 45, 45),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NotifPage();
                }));
              },
            ),
          ]),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: Lottie.asset(
                        "assets/anim/prof.json",
                        width: 120,
                        height: 120,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(19, 255, 250, 251),
                            borderRadius: BorderRadius.circular(13)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Liyanni",
                                style: TextStyle(
                                    color: Color.fromARGB(219, 255, 255, 255),
                                    fontSize: 25,
                                    fontWeight: FontWeight.w100),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Text('0899292993',
                                  style: TextStyle(
                                    color: Color.fromARGB(219, 255, 255, 255),
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Saldo',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(219, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        1 /
                                        100,
                                  ),
                                  Text(
                                    'Rp. 500.000,00',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(219, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 100,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 15,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(245, 245, 245, 255),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13)),
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Lottie.asset(
                                            "assets/anim/up.json",
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1.5 /
                                                10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Uang Masuk',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 125, 125, 125),
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Text(
                                                'Rp 127.000',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                1 /
                                                10,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1 /
                                                100,
                                        color:
                                            Color.fromARGB(245, 245, 245, 255),
                                      ),
                                      Row(
                                        children: [
                                          Lottie.asset(
                                            "assets/anim/down.json",
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1.7 /
                                                10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Uang Masuk',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 125, 125, 125),
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Text(
                                                'Rp 207.000',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        2 /
                                        100,
                                  ),
                                  CategoryItem2(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        2 /
                                        100,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Pengaturan Akun",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 87, 87, 87),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1 / 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Buat Akun Baru",
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w100),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return RegisScreen();
                                          }));
                                        },
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1 /
                                              10,
                                          child: Lottie.asset(
                                              "assets/anim/arrow.json"),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      bottom: 5,
                                    ),
                                    color: Color.fromARGB(245, 245, 245, 255),
                                    width: double.infinity,
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Akun Terhubung",
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w100),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return AccPage();
                                          }));
                                        },
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1 /
                                              10,
                                          child: Lottie.asset(
                                              "assets/anim/arrow.json"),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      bottom: 5,
                                    ),
                                    color: Color.fromARGB(245, 245, 245, 255),
                                    width: double.infinity,
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Kode Undangan",
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w100),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return CodePage();
                                          }));
                                        },
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1 /
                                              10,
                                          child: Lottie.asset(
                                              "assets/anim/arrow.json"),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      bottom: 5,
                                    ),
                                    color: Color.fromARGB(245, 245, 245, 255),
                                    width: double.infinity,
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          Text(
                            "Version Beta 0.1",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 0, 0),
                              side: BorderSide(
                                color: Color.fromARGB(255, 236, 32, 40),
                              ),
                              elevation: 10,
                              minimumSize: const Size(double.infinity, 52),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return LoginnScreen();
                              }));
                            },
                            child: const Text(
                              'Log Out',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
