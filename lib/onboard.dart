import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/themes/themes.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/background.jpg",
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 150, top: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.shield_moon,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "ECLIPSE",
                      style: TextStyle(
                        color: orangeColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: Row(
                        children: [
                          Text(
                            "Discover Your",
                            style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Favorite",
                            style: TextStyle(
                                color: orangeColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: Row(
                        children: [
                          Text(
                            "Show",
                            style: TextStyle(
                                color: orangeColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Whatch Now or",
                            style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: Row(
                        children: [
                          Text(
                            "Watch It Later",
                            style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: Text(
                        " You can browse movies and show by genre, search\n specific titles, or check out our recommendations for you.",
                        style: TextStyle(color: whiteColor),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      margin: EdgeInsets.only(right: 50, left: 50, top: 60),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: orangeColor),
                      child: Center(
                        child: Text(
                          "Get started",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
