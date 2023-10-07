import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/themes/themes.dart';

class CastWidget extends StatelessWidget {
  const CastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
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
              "assets/cast1.jpg",
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Nama Pemeran - sebagai ",
            style: TextStyle(color: whiteColor, fontSize: 11),
          )
        ],
      ),
    );
  }
}
