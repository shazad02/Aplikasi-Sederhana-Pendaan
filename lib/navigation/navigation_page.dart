import 'package:flutter/material.dart';
import 'package:pembayaranklp2/category/hiburan_page.dart';
import 'package:pembayaranklp2/category/profile_page.dart';
import 'package:pembayaranklp2/category/riwayat_page.dart';

import 'package:pembayaranklp2/screen/dashboard.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 0;
  List<Widget> listPage = [
    DashboardScreen(),
    HiburanPage(),
    RiwayatPage(),
    ProfliePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: Colors.black,
          child: BottomNavigationBar(
            elevation: 0,
            iconSize: 35,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet),
                  activeIcon: Icon(Icons.account_balance_wallet),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_location_alt),
                  activeIcon: Icon(Icons.add_location_alt),
                  label: 'Maps'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history_edu_sharp),
                  activeIcon: Icon(Icons.history_edu),
                  label: 'Riwayat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.manage_accounts),
                  activeIcon: Icon(Icons.manage_accounts),
                  label: 'Akun Saya'),
            ],
            selectedItemColor: Colors.red,
            unselectedItemColor: Color(0xff747D8C),
            currentIndex: index,
            onTap: (i) {
              setState(() {
                index = i;
              });
            },
          ),
        ),
      ),
    );
  }
}
