import 'package:flutter/material.dart';
import 'package:web_screen_flutter/strings.dart';
import 'package:web_screen_flutter/widgets/titleWidget.dart';
import 'package:web_screen_flutter/widgets/upperHeader.dart';
import 'package:web_screen_flutter/widgets/watchListExpansion.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Column(
        children: [
          const UpperHeader(),
          const SizedBox(height: 30),
          Image.asset(
            "images/ad.png",
            height: 50,
          ),
          Expanded(
              child: Row(
            children: [
              const SizedBox(width: 10),
              firstContainer(),
              const SizedBox(width: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              color: Colors.white,
                              height: 200,
                              width: MediaQuery.of(context).size.width / 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Listings",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Divider(),
                                  Column(
                                    children: List.generate(
                                        4,
                                        (index) => Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    listingList[index],
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Text(
                                                    "\$599.03",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "\$0.70",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: listingColors[
                                                            index]),
                                                  ),
                                                  Text(
                                                    "0.30%",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: listingColors[
                                                            index]),
                                                  ),
                                                  Image.asset(
                                                    "images/arrow_up_red.png",
                                                    height: 15,
                                                    color: listingColors[index],
                                                  ),
                                                ],
                                              ),
                                            )),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              color: Colors.white,
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Listings",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Divider(),
                                  Column(
                                    children: List.generate(
                                        4,
                                        (index) => Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    listingList[index],
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Text(
                                                    "\$599.03",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "\$0.70",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: listingColors[
                                                            index]),
                                                  ),
                                                  Text(
                                                    "0.30%",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: listingColors[
                                                            index]),
                                                  ),
                                                  Image.asset(
                                                    "images/arrow_up_red.png",
                                                    height: 15,
                                                    color: listingColors[index],
                                                  ),
                                                ],
                                              ),
                                            )),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 300,
                    color: Colors.pink,
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }

  SingleChildScrollView firstContainer() {
    return SingleChildScrollView(
      primary: false,
      child: Container(
        width: 300,
        color: Colors.transparent,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 300,
              height: 250,
              child: Column(
                children: [
                  TileWidget(
                    iconPath: 'images/user.png',
                    title: 'Profile',
                    trailWidget: MaterialButton(
                      shape: const StadiumBorder(),
                      onPressed: () {},
                      color: const Color(0xff0059E3),
                      child: const Text(
                        "Post",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TileWidget(
                      iconPath: 'images/bell.png',
                      title: 'Notification',
                      trailWidget: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor:
                            const Color(0xffEF4444).withOpacity(0.1),
                        child: const Text(
                          "2",
                          style: TextStyle(
                              color: Color(0xffEF4444),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  const SizedBox(height: 10),
                  TileWidget(
                      iconPath: 'images/Chat_solid.png',
                      title: 'Messages',
                      trailWidget: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor:
                            const Color(0xff0D9488).withOpacity(0.1),
                        child: const Text(
                          "24",
                          style: TextStyle(
                              color: Color(0xff0D9488),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  const SizedBox(height: 20),
                  TileWidget(
                      iconPath: 'images/airplay.png',
                      title: 'My Potfolio',
                      trailWidget: const SizedBox(width: 45)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const WatchListExpansion(),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 300,
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                socialImgs[index],
                                height: 50,
                              ),
                            )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            4,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(options1[index]),
                                )),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            4,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(options2[index]),
                                )),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            5,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(options3[index]),
                                )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: List.generate(
                        2,
                        (index) => Image.asset(
                              storesImgs[index],
                              height: 40,
                            )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      "2022 ContoTwits, Inc. All rights reserved\n.Market Data by ")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
