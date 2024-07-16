import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 5),
                        child: Icon(Icons.menu),
                      ),
                      const Gap(30),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text("Green", style: TextStyle(fontSize: 16)),
                      ),
                      const Gap(30),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                              text: ".",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.deepOrange),
                            ),
                          ])),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text("Inline Glass",
                              style: TextStyle(
                                fontSize: 40,
                              )),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text("OutLIne Glass",
                              style: TextStyle(
                                fontSize: 40,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
