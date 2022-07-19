import 'package:flutter/material.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 40),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  " special THANKS ",
                  style: TextStyle(fontFamily: "SpecialElite", fontSize: 40),
                ),
                Text(
                  " to:",
                  style: TextStyle(fontFamily: "SpecialElite", fontSize: 30),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 60, child: Image.asset("assets/globizs.JPG")),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Globizs Web Solution Pvt. Ltd.",
                      style:
                          TextStyle(fontFamily: "SpecialElite", fontSize: 16),
                    ),
                    const Text(
                      " I express my first and for most debt of gratitude to 'Globizs Web Solution Pvt. Ltd. Imphal, Manipur.' for giving such a great opportunity to work and complete the application/ my project . I am very grateful to Khundrakpam Sushil & Mayengbam Santa Singh, project Coordinators, Globizs Web Solution Pvt. Ltd. Imphal, Manipur, for guiding and supporting me to do build the application under their supervision. I am indebted to them for their valuable time, suggestions, inspiration and experience that they had spared on me and also showering each possible help.",
                      style: TextStyle(
                          fontFamily: "SpecialElite",
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 80,
                        child: Image.asset("assets/logonielit.jpg")),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "nielit, Imphal",
                      style:
                          TextStyle(fontFamily: "SpecialElite", fontSize: 16),
                    ),
                    const Text(
                      "It is immense pleasure to avail myself of their opportunity to express my deepest gratitude to National Institute of Electronics & Information Technology (NIELIT), Imphal, for providing the required resources and support. And for allowing us to complete the project, I would like to extend my thanks to mam Swavana Devi, for supervising the session and for her assistance.",
                      style: TextStyle(
                          fontFamily: "SpecialElite",
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 80, child: Image.asset("assets/logomu.png")),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Manipur  University, Canchipur, Imphal",
                      style:
                          TextStyle(fontFamily: "SpecialElite", fontSize: 16),
                    ),
                    const Text(
                      "I also would like to extend my deepest thanks to the whole family of Computer Science Department, Manipur University, for allowing me to take up this Project as a partial fulfillment for the award of Master of Computer Application Degree and Encouraging for Completing my project work and for providing me a helping hand, which was the main impetus behind this labouredly work and to all my friends, family and well wishers who have encouraged me throughout the project work and making this project a successful one.",
                      style: TextStyle(
                          fontFamily: "SpecialElite",
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
