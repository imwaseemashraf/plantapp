import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Product extends StatelessWidget {
  final String image, name, description;
  const Product(
      {super.key,
      required this.image,
      required this.name,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 300,
          height: 300,
        ),
        const Gap(15),
        Text(name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
        const Gap(5),
        Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30),
          child: Text(description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 12,
                // fontWeight: FontWeight.w600,
              )),
        ),
        const Gap(20),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("\$45",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              Image.asset(
                "assets/images/basket icon.png",
                width: 40,
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
