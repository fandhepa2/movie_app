import 'package:flutter/material.dart';
import 'package:movie_app/detail_movie.dart';

import 'package:movie_app/themes/themes.dart';
import 'package:movie_app/widgets/banner_widgets.dart';
import 'package:movie_app/widgets/movie_widgets.dart';
import 'package:movie_app/widgets/tranding_widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor1,
      appBar: AppBar(
        backgroundColor: blackColor1,
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wellcome Back Simmons",
              style: TextStyle(color: whiteColor),
            ),
            Text(
              "Any Movie to watch ?",
              style: TextStyle(color: whiteColor, fontSize: 20),
            )
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: [
                  BannerWidgets(),
                  SizedBox(
                    width: 10,
                  ),
                  BannerWidgets(),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        print("detail");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailMovie()));
                      },
                      child: BannerWidgets()),
                ],
              ),
            ),
          ),
          Text(
            "___ _  _  _",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: whiteColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Continue Watching",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      print("detail");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailMovie()));
                    },
                    child: MovieWidgets()),
                SizedBox(
                  width: 10,
                ),
                MovieWidgets(),
                SizedBox(
                  width: 10,
                ),
                MovieWidgets(),
                SizedBox(
                  width: 10,
                ),
                MovieWidgets(),
              ],
            ),
          ),
          GridView.count(
            // tambahkan shrinkWrap: true dan physics: const NeverScrollableScrollPhysics()
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 2,
            // tambahkan  childAspectRatio: untuk membuat perbandingan lebar dan tinggi
            childAspectRatio: 5 / 7,
            children: [
              TrandingWidgets(),
              TrandingWidgets(),
              TrandingWidgets(),
              TrandingWidgets(),
              TrandingWidgets(),
              TrandingWidgets(),
              TrandingWidgets(),
              TrandingWidgets(),
            ],
          ),
        ],
      ),
    );
  }
}
