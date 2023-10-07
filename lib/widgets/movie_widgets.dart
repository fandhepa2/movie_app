import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/themes/themes.dart';

class MovieWidgets extends StatelessWidget {
  const MovieWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      // width: MediaQuery.of(context).size.width * 0.42,
      padding: EdgeInsets.all(11),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: blackColor1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            // ubah jadi image.network
            child: Image.asset(
              "assets/background.jpg",
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Bleach TYWB",
            style: TextStyle(
                color: whiteColor, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(
            "S1 - Episode 8",
            style: TextStyle(color: whiteColor, fontSize: 12),
          )
        ],
      ),
    );
  }
}
