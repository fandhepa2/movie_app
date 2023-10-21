import 'package:flutter/material.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:movie_app/widgets/cast_widgets.dart';
import 'package:movie_app/widgets/movie_widgets.dart';

class DetailMovie extends StatelessWidget {
  const DetailMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor1,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          Icon(
            Icons.share,
            color: whiteColor,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/banner3.jpg",
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 350,
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
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "3Hours 12 Minutes ",
                    style: TextStyle(color: whiteColor, fontSize: 12),
                  ),
                  Icon(
                    Icons.star,
                    color: orangeColor,
                    size: 15,
                  ),
                  Text(
                    "8.4",
                    style: TextStyle(color: whiteColor, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    // margin: EdgeInsets.only(right: 80, left: 70, top: 60),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greyColor),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Adventure",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    // margin: EdgeInsets.only(right: 80, left: 70, top: 60),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greyColor),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Drama",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    // margin: EdgeInsets.only(right: 80, left: 70, top: 60),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greyColor),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Fantasy",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    // margin: EdgeInsets.only(right: 80, left: 70, top: 60),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greyColor),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Sci-fi",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Synopsis",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "The series is centered around the journey of twelve-year-old, the current Avatar and last survivor of his nation, the Air Nomads, along with his friends, as they strive to end the Fire Nation's war against the other nations and defeat Fire Lord before he conquers the world.",
                    style: TextStyle(color: greyColor, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Cast",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 70),
                    child: Row(
                      children: [
                        CastWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        CastWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        CastWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        CastWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        CastWidget(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.small(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.download_outlined,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton.extended(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow_sharp),
                  label: const Text('Watch Now'),
                  backgroundColor: Colors.orangeAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton.small(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.list,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
