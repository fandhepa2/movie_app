import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/themes/themes.dart';

class TrandingWidgets extends StatelessWidget {
  const TrandingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
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
              width: 180,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
