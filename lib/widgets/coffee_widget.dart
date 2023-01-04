import 'package:angrybaaz/screens/coffeeScree.dart';
import 'package:flutter/material.dart';

class CoffeeWidget extends StatelessWidget {
  const CoffeeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 25, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff68686A),
        ),
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              height: 150,
              image: AssetImage("assets/images/coffee1.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hot Cappuccino",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Espresso, Steamed Milk",
                            style: TextStyle(
                              color: Color(0xff303030),
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 2.55,
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
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                        ),
                        height: 30,
                        width: 30,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, CoffeePage.name);
      },
    );
  }
}
