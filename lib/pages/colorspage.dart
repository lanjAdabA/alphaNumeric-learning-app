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
  Color _color = Colors.transparent;
  String _colorname = "Choose A COLOR FIRST.";
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
    {"colornameis": "PINK", "coloris": Colors.pink[300]},
    {"colornameis": "PURPLE", "coloris": Colors.purple},
    {"colornameis": "INDIGO", "coloris": Colors.indigo},
    {"colornameis": "ORANGE", "coloris": Colors.orange},
    {"colornameis": "BROWN", "coloris": Colors.brown},
    {"colornameis": "BLACK", "coloris": Colors.black},
    {"colornameis": "GREY", "coloris": Colors.grey},
    {"colornameis": "YELLOW", "coloris": Colors.yellow},
    {"colornameis": "WHITE", "coloris": Colors.white},
  ];

//! 2nd card
  // final List<Map<String, dynamic>> card2 = [
  //   {"colornameis": "DARK GREEN", "coloris": Colors.green[900]},
  //   {"colornameis": "LIGHT GREEN", "coloris": Colors.lightGreen},
  //   {"colornameis": "LIME", "coloris": Colors.lime},
  //   {"colornameis": "DARK BLUE", "coloris": Colors.blue[900]},
  //   {"colornameis": "LIGHT BLUE", "coloris": Colors.lightBlue},
  //   {"colornameis": "CYAN", "coloris": Colors.cyan},
  //   {"colornameis": "AMBER", "coloris": Colors.amber},
  //   {"colornameis": "SAFFRON", "coloris": Colors.orange[700]},
  // ];

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
      backgroundColor: Colors.grey[400],
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
                        // border: Border.all(color: Colors.black, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: _color,
                      ),
                      margin: const EdgeInsets.all(20),
                    ),
                  ],
                ),
                onTap: () {
                  speak(_colorname);
                },
              )),
          Expanded(
              flex: 20,
              child: Container(
                color: Colors.grey[400],
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.35,
                        height: screeensize.height * .15,
                      ),
                      items: card1.map((card1) {
                        return InkWell(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .09,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                    color: card1["coloris"],
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * .26,
                                  // child: Center(
                                  //   child: Text(
                                  //     card1['colornameis'],
                                  //     style: TextStyle(
                                  //         fontFamily: "StickNoBills",
                                  //         fontWeight: FontWeight.bold,
                                  //         color: Colors.white,
                                  //         fontSize: MediaQuery.of(context)
                                  //                 .size
                                  //                 .width /
                                  //             20),
                                  //   ),
                                  // ),
                                ),
                                Text(
                                  card1['colornameis'],
                                  style: TextStyle(
                                      fontFamily: "StickNoBills",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              20),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            speak(card1["colornameis"].toString());
                            log(card1["coloris"].toString());
                            setState(() {
                              _color = card1["coloris"];
                              _colorname = card1["colornameis"];
                            });
                          },
                        );
                      }).toList(),
                    ),
                    //! 2nd carousel
                    // CarouselSlider(
                    //   options: CarouselOptions(
                    //     enlargeCenterPage: true,
                    //     enableInfiniteScroll: true,
                    //     viewportFraction: 0.35,
                    //     height: screeensize.height * .1,
                    //   ),
                    //   items: card2.map((card2) {
                    //     return InkWell(
                    //       child: Container(
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(20),
                    //             color: card2["coloris"],
                    //           ),
                    //           width: MediaQuery.of(context).size.width * 4,
                    //           child: Center(
                    //             child: Text(
                    //               card2['colornameis'],
                    //               style: TextStyle(
                    //                   fontFamily: "StickNoBills",
                    //                   fontWeight: FontWeight.bold,
                    //                   color: Colors.black,
                    //                   fontSize:
                    //                       MediaQuery.of(context).size.width /
                    //                           25),
                    //             ),
                    //           )),
                    //       onTap: () {
                    //         speak(card2["colornameis"].toString());
                    //         setState(() {
                    //           _color = card2["coloris"];
                    //           _colorname = card2["colornameis"];
                    //         });
                    //       },
                    //     );
                    //   }).toList(),
                    // )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
