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
          const Positioned(
              top: 350,
              right: 32,
              child: Text(
                "\$45",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              )),
        ],
      ),
    );
  }
}
