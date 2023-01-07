import 'package:flutter/material.dart';

class BottomCoffeeWidget extends StatelessWidget {
  const BottomCoffeeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.3),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 16,
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Lattè",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "4.9",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Image(
                        height: 10,
                        image: AssetImage("assets/images/star.png"),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "(458)",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image(
                        height: 10,
                        image: AssetImage("assets/images/veg.png"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              right: 9,
            ),
            height: 115,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 7,
                  ),
                  child: const Image(
                    height: 100,
                    width: 100,
                    image: AssetImage("assets/images/Coffee2.png"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff66A35C),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 50,
                  height: 20,
                  child: const Center(
                    child: Text(
                      "ADD",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
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
