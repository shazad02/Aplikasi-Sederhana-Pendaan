import 'package:flutter/material.dart';
import 'package:pembayaranklp2/profile/code_page.dart';

import '../../models/covid_model.dart';

class CovidCard extends StatelessWidget {
  const CovidCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: covidModel.length,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CodePage();
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(right: 12),
                width: 248,
                height: 180,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 63, 60, 60)
                            .withOpacity(0.5),
                        blurRadius: 0.5,
                        offset: const Offset(0, 3))
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      covidModel[index].images,
                      width: double.infinity,
                      height: 112,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      width: double.infinity,
                      height: 40,
                      decoration: const BoxDecoration(),
                      child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        covidModel[index].text,
                        style: const TextStyle(
                          color: Color(0xff1E272E),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
