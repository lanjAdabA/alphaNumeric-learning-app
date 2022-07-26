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

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Number_Chart"),
          centerTitle: true,
        ),
        drawer: const MainDrawer(),
        body: ListWheelScrollView(
          itemExtent: width / 1.3,
          onSelectedItemChanged: (index) {
            speak({index + 1}.toString());
          },
          physics: const FixedExtentScrollPhysics(),
          children: shapeData.map((e) {
            return Container(
                width: width * 1,
                color: e["shapeColor"],
                height: 400,
                child: Column(
                  children: [
                    SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset(e["shapeImg"])),
                    // Image(image: e["shapeImg"]),
                    Text(
                      e["shapeName"],
                      style: TextStyle(
                          fontFamily: "titanOne", fontSize: width * 0.06),
                    )
                  ],
                ));
          }).toList(),
        ));
  }
}
