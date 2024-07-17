import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:plantapp/common/Urls.dart';
import 'package:plantapp/common/Utils/appcolors.dart';
import 'package:plantapp/widget/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              sidebar(),
              bodyParts(context),
            ],
          ),
          const Positioned(
            left: 30,
            top: 125,
            child: Text(
              "Plants",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
          const Positioned(
              right: 20,
              top: 65,
              child: Icon(
                Icons.search,
                size: 30,
              )),
        ],
      ),
    );
  }
}

Expanded sidebar() {
  return Expanded(
    child: Container(
      color: AppColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 5, top: 10),
                child: Image.asset(
                  "assets/images/more.png",
                  scale: 1,
                  height: 30,
                  width: 50,
                ),
              ),
              const Gap(30),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text("Green", style: TextStyle(fontSize: 16)),
              ),
              const Gap(30),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: ".",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: AppColors.secondaryColor),
                        ),
                        TextSpan(
                            text: "Shape close",
                            style: TextStyle(color: AppColors.secondaryColor))
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(30),
              const Padding(
                padding: EdgeInsets.only(left: 1),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Indoor Plants",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const Gap(30),
              const Padding(
                padding: EdgeInsets.only(left: 1),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text("Outdoor Plants",
                      style: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ),
              const Gap(30),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(right: 10, top: 100),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: const Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}

Widget bodyParts(BuildContext context) {
  return Container(
    color: AppColors.white,
    width: MediaQuery.of(context).size.width * 0.8,
    child: const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Gap(100),
          Product(
              image: Urls.product1,
              name: "House Shape Close",
              description:
                  "The Fiddle Leaf Fig is a popular indoor plant known for its large, glossy leaves"),
          Product(
              image: Urls.product2,
              name: "Glass Water",
              description:
                  "It requires bright, indirect light and consistent watering. This plant is perfect for adding a touch of greenery to any room."),
          Product(
              image: Urls.product2,
              name: "Glass Water",
              description:
                  "It requires bright, indirect light and consistent watering. This plant is perfect for adding a touch of greenery to any room."),
        ],
      ),
    ),
  );
}
