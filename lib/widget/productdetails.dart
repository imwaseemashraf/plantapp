import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:plantapp/common/Utils/appcolors.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          bottomValue(context),
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(140)),
                color: AppColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset("assets/images/filter icon.png",
                              width: 50, height: 50),
                        ),
                      ],
                    ),
                    const Gap(30),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 22.0),
                          child: Text(
                            "House Shape \nClosePlant",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              height: 1.01,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Icon(
                            CupertinoIcons.heart,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                    const Gap(30),
                    // for image are
                    Stack(
                      children: [
                        Image.asset("assets/images/flower1.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 250),
                          child: Container(
                            height: 22,
                            width: 8,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 275),
                          child: Container(
                            height: 10,
                            width: 8,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 288),
                          child: Container(
                            height: 10,
                            width: 8,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 301),
                          child: Container(
                            height: 10,
                            width: 8,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
              top: 210,
              left: 32,
              child: Text(
                "\$45",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              )),
          Positioned(
              // top: 350,
              right: 32,
              bottom: 170,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: AppColors.secondaryColor,
                ),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                child: const Text(
                  "add to cart",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white),
                ),
              )),
        ],
      ),
    );
  }
}

Widget bottomValue(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.only(bottom: 10, left: 18, right: 18),
    color: AppColors.secondaryColor,
    child: const Stack(
      children: [
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 16, color: AppColors.white),
                  ),
                  Text(
                    "40cm-50cm",
                    style: TextStyle(fontSize: 10, color: AppColors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "POT",
                    style: TextStyle(fontSize: 16, color: AppColors.white),
                  ),
                  Text(
                    "Self Watering Pot",
                    style: TextStyle(fontSize: 10, color: AppColors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Temperature",
                    style: TextStyle(fontSize: 16, color: AppColors.white),
                  ),
                  Text(
                    "18C-25C",
                    style: TextStyle(fontSize: 10, color: AppColors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
