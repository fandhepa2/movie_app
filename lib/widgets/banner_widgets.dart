import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/themes/themes.dart';

class BannerWidgets extends StatelessWidget {
  const BannerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 150,
      // width: MediaQuery.of(context).size.width * 0.40,
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: whiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // ubah jadi image.network
                child: Image.asset(
                  "assets/background.jpg",
                  width: 500,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Avatar : The Way of Water",
                        style: TextStyle(color: whiteColor, fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
