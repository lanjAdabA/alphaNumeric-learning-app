import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:learn/pages/main_drawer.dart';

class ShapePage extends StatefulWidget {
  const ShapePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ShapePage> createState() => _NumblockState();
}

class _NumblockState extends State<ShapePage> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  final List<Map<String, dynamic>> shapeData = [
    {
      'shapeName': "SQUARE",
      'shapeImg': 'assets/shapeImg/square.png',
      "shapeColor": Colors.red
    },
    {
      'shapeName': "CIRCLE",
      'shapeImg': 'assets/shapeImg/circle.png',
      "shapeColor": Colors.blue,
    },
    {
      'shapeName': "TRIANGLE",
      'shapeImg': 'assets/shapeImg/triangle.png',
      "shapeColor": Colors.amber,
    },
    {
      'shapeName': "RECTANGLE",
      'shapeImg': 'assets/shapeImg/rectangle.png',
      "shapeColor": Colors.teal,
    },
    {
      'shapeName': "OVAL",
      'shapeImg': 'assets/shapeImg/oval.png',
      "shapeColor": Colors.green,
    },
    {
      'shapeName': "STAR",
      'shapeImg': 'assets/shapeImg/star.png',
      "shapeColor": Colors.orange,
    },
    {
      'shapeName': "HEART",
      'shapeImg': 'assets/shapeImg/heart.png',
      "shapeColor": Colors.teal,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Number_Chart"),
        centerTitle: true,
      ),
      drawer: const MainDrawer(),
      body: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          enableInfiniteScroll: true,
          viewportFraction: .5,
          height: height * 1,
        ),
        items: shapeData.map((e) {
          return Container(
            decoration: BoxDecoration(
              // color: e["shapeColor"],
              color: Colors.blue[50],
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            width: width * 1,
            height: height / 2.6,
            child: GestureDetector(
              onTap: () => speak(e["shapeName"]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    e["shapeName"],
                    style: TextStyle(
                        fontFamily: "titanOne", fontSize: height * 0.04),
                  ),
                  SizedBox(
                      height: height / 3,
                      width: width / 2,
                      child: Image.asset(e["shapeImg"])),
                  // Image(image: e["shapeImg"]),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
