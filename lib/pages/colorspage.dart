import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:learn/pages/main_drawer.dart';

class ColourPage extends StatefulWidget {
  const ColourPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ColourPage> createState() => ColorPageState();
}

class ColorPageState extends State<ColourPage> {
  Color color = Colors.amber;
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  final List<Map<String, dynamic>> card1 = [
    {"colornameis": "RED", "coloris": Colors.red},
    {"colornameis": "GREEN", "coloris": Colors.green},
    {"colornameis": "BLUE", "coloris": Colors.blue},
    {"colornameis": "PINK", "coloris": Colors.pink[200]},
    {"colornameis": "PURPLE", "coloris": Colors.purple},
    {"colornameis": "INDIGO", "coloris": Colors.indigo},
    {"colornameis": "ORANGE", "coloris": Colors.orange},
    {"colornameis": "BROWN", "coloris": Colors.brown},
    {"colornameis": "BLACK", "coloris": Colors.black},
    {"colornameis": "GREY", "coloris": Colors.grey},
  ];

  final List<Map<String, dynamic>> card2 = [
    {"colornameis": "YELLOW", "coloris": Colors.yellow},
    {"colornameis": "DARK GREEN", "coloris": Colors.green[900]},
    {"colornameis": "LIGHT GREEN", "coloris": Colors.lightGreen},
    {"colornameis": "LIME", "coloris": Colors.lime},
    {"colornameis": "DARK BLUE", "coloris": Colors.blue[900]},
    {"colornameis": "LIGHT BLUE", "coloris": Colors.lightBlue},
    {"colornameis": "CYAN", "coloris": Colors.cyan},
    {"colornameis": "AMBER", "coloris": Colors.amber},
    {"colornameis": "SAFFRON", "coloris": Colors.orange[700]},
    {"colornameis": "WHITE", "coloris": Colors.white},
  ];

  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 1; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var screeensize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 242, 250),
      appBar: AppBar(
        title: const Text("Color_Page"),
        centerTitle: true,
      ),
      drawer: const MainDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 80,
              child: InkWell(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: color,
                      ),
                      margin: const EdgeInsets.all(20),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    index++;
                  });
                },
              )),
          Expanded(
              flex: 27,
              child: Container(
                color: Colors.blue[50],
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.35,
                        height: screeensize.height * .1,
                      ),
                      items: card1.map((card1) {
                        return InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: card1["coloris"],
                              ),
                              width: MediaQuery.of(context).size.width * 4,
                              child: Center(
                                child: Text(
                                  card1['colornameis'],
                                  style: TextStyle(
                                      fontFamily: "StickNoBills",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              20),
                                ),
                              )),
                          onTap: () {
                            speak(card1["colornameis"].toString());
                            log(card1["coloris"].toString());
                            setState(() {
                              color = card1["coloris"];
                            });
                          },
                        );
                      }).toList(),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.35,
                        height: screeensize.height * .1,
                      ),
                      items: card2.map((card2) {
                        return InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: card2["coloris"],
                              ),
                              width: MediaQuery.of(context).size.width * 4,
                              child: Center(
                                child: Text(
                                  card2['colornameis'],
                                  style: TextStyle(
                                      fontFamily: "StickNoBills",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25),
                                ),
                              )),
                          onTap: () {
                            speak(card2["colornameis"].toString());
                            // log(card2["coloris"].toString());
                            setState(() {
                              color = card2["coloris"];
                            });
                          },
                        );
                      }).toList(),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
