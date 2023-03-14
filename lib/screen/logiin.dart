import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pembayaranklp2/navigation/navigation_page.dart';
import 'package:pembayaranklp2/screen/regis.dart';
import 'package:pembayaranklp2/widget/dimensions.dart';
import 'package:pembayaranklp2/widget/styles.dart';

class LoginnScreen extends StatelessWidget {
  const LoginnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phone = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 32, 40),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 4 / 100,
                ),
                Text(
                  'Login',
                  style: robotoMedium.copyWith(
                      fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                      color: Color.fromARGB(255, 39, 35, 35),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nomor Hp',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      style: const TextStyle(
                        color: Color.fromARGB(255, 236, 32, 40),
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        fillColor: Color.fromARGB(255, 246, 252, 255),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      controller: phone,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kata Sandi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      style: const TextStyle(
                        color: Color.fromARGB(255, 236, 32, 40),
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        fillColor: Color.fromARGB(255, 246, 252, 255),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      controller: password,
                      maxLength: 8,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 2 / 100,
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
                      return NavigationPage();
                    }));
                  },
                  child: const Text(
                    'MASUK',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 5 / 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        'Belum Punya Akun?',
                        style: TextStyle(
                          color: Color(0xffD9D9D9),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                        child: Text(
                          "Daftar Sekarang",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegisScreen();
                          }));
                        }),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 4 / 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 8 / 10,
                      child: Lottie.asset("assets/anim/robo.json"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
