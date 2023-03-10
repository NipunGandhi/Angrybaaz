import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/bottom_coffee_widget.dart';
import '../widgets/coffee_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String name = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Random(
              theChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Image(
                            height: 27,
                            image: AssetImage("assets/images/hand.png"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "20/12/2022",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffb6b6b6),
                                ),
                              ),
                              Text(
                                "Joshua Scanlan",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffb6b6b6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xfff9f9f9),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: const Image(
                              image: AssetImage("assets/images/basket.png"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Image(
                            image: AssetImage("assets/images/DP.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Image(
                              image: AssetImage("assets/images/search.png"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Search favorite Beverages",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xffbbbbbbc),
                              ),
                            ),
                          ],
                        ),
                        const Image(
                          image: AssetImage("assets/images/filter.png"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              theHeight: 180,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff3D3D3F),
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.only(left: 13, top: 13),
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Most Popular Beverages",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xffB6B6B6),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CoffeeWidget(),
                        CoffeeWidget(),
                        CoffeeWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 13, top: 13, right: 13),
              color: const Color(0xff4E484B),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Get it instantly",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xffB6B6B6),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  BottomCoffeeWidget(),
                  BottomCoffeeWidget(),
                  BottomCoffeeWidget(),
                  BottomCoffeeWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Random extends StatelessWidget {
  const Random({Key? key, required this.theChild, this.theHeight})
      : super(key: key);
  final Widget theChild;
  final double? theHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            spreadRadius: 16,
            color: Colors.black.withOpacity(0.3),
          )
        ],
        image: const DecorationImage(
          image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 25.0,
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          height: theHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            //
          ),
          child: theChild,
        ),
      ),
    );
  }
}
