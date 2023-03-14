import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CodePage extends StatelessWidget {
  const CodePage({Key? key}) : super(key: key);

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
          'Kode Undangan',
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
      body: CodeBody(),
    );
  }
}

class CodeBody extends StatelessWidget {
  const CodeBody({
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
            child: Lottie.asset("assets/anim/404.json"),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Text(
                'Mohon Maaf, server sedang down',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
