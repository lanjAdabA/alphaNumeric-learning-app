import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 40),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: const [
                  Text(
                    " about ",
                    style: TextStyle(fontFamily: "SpecialElite", fontSize: 50),
                  ),
                  Text(
                    " the application",
                    style: TextStyle(fontFamily: "SpecialElite", fontSize: 30),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "The  application provides alphabet chart, and corresponding alphabet letter pages, numeric list- figure and words from one to ten, color demonstration page, and exercise page to test toddlers knowledge/ to play.",
                style: TextStyle(fontFamily: "SpecialElite", fontSize: 16),
              ),
              const Text(
                " \n Learning alphabets, numeric fig, with corresponding words, colors that too comfortably is an essential part of early part of learning about literacy.\n \n It is also learnt that learning through playing is an important part of a child’s development. \n \nDistinguishing between the letters and learning their names is not the end to 'learning the alphabet.' Knowing specific letter-sound associations and letter- word associations are very crucial.\n In this process, using an “easy to use” learning method is of prime importance.\n\n Keeping these facts in mind, this project/application is developed based on mobile platform. ",
                style: TextStyle(fontFamily: "SpecialElite", fontSize: 16),
              ),
              const Text(
                " \n This project will help children in their learning process of English alphabet, number figure and words, and colors, and enriching some corresponding words with the help of smartphone. Learning through playing is a healthy approach of development of a children.",
                style: TextStyle(fontFamily: "SpecialElite", fontSize: 16),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      height: 100, child: Image.asset("assets/splash.png")),
                  SizedBox(
                      height: 100, child: Image.asset("assets/banner.png")),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
