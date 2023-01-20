import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 230,
      left: 20,
      right: 20,
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 7,
              childAspectRatio: 101 / 60,
              crossAxisSpacing: 7,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 8, bottom: 8, left: 5),
                width: 110,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),

                        blurRadius: 1,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: const <TextSpan>[],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
