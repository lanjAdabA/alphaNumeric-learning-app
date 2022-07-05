import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_tts/flutter_tts.dart';

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
    {"colornameis": "PINK", "coloris": Colors.pink[200]},
    {"colornameis": "PURPLE", "coloris": Colors.purple},
    {"colornameis": "INDIGO", "coloris": Colors.indigo},
    {"colornameis": "BLUE", "coloris": Colors.blue},
    {"colornameis": "GREEN", "coloris": Colors.green},
    // {"colornameis": "DARK - GREEN", "coloris": Colors.green[900]},
    {"colornameis": "ORANGE", "coloris": Colors.orange},
    {"colornameis": "BROWN", "coloris": Colors.brown},
    {"colornameis": "BLACK", "coloris": Colors.black},
    {"colornameis": "GREY", "coloris": Colors.grey},
    // {"colornameis": "DARK - BLUE", "coloris": Colors.blue[900]},
  ];

  final List<Map<String, dynamic>> card2 = [
    {"colornameis": "AMBER", "coloris": Colors.amber},
    {"colornameis": "YELLOW", "coloris": Colors.yellow},
    {"colornameis": "LIME", "coloris": Colors.lime},
    {"colornameis": "CYAN", "coloris": Colors.cyan},
    {"colornameis": "WHITE", "coloris": Colors.white},
    // {"colornameis": "LIGHT - BLUE", "coloris": Colors.lightBlue},
    // {"colornameis": "TEAL", "coloris": Colors.teal},
    // {"colornameis": "LIGHT - GREEN", "coloris": Colors.lightGreen},
  ];

  // final List<String> colornameis = [
  //   "RED",
  //   "GREEN",
  //   "BLUE",
  //   "YELLOW",
  //   "WHITE",
  //   "BLACK",
  //   "PINK",
  //   "PURPLE",
  //   "BROWN",
  //   "ORANGE",
  //   "GREY",
  //   "INDIGO",
  // ];

  // final List<Color> coloris = [
  //   Colors.red,
  //   Colors.green,
  //   Colors.blue,
  //   Colors.yellow,
  //   Colors.white,
  //   Colors.black,
  //   Colors.pink,
  //   Colors.purple,
  //   Colors.brown,
  //   Colors.deepOrange,
  //   Colors.grey,
  //   Colors.indigo,
  // ];

  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  // List card1 = [
  //   const ColorTile(
  //     colour: Colors.amber,
  //     colourname1: '',
  //   ),
  // ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 1; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 242, 250),
      appBar: AppBar(
        title: const Text("Color Page"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
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
                    // Container(
                    //   color: Colors.black,
                    //   child: Text(
                    //     card1[index]["colornameis"],
                    //     style: const TextStyle(
                    //         fontSize: 80,
                    //         fontWeight: FontWeight.bold,
                    //         fontFamily: "bungeeShade",
                    //         color: Colors.amber
                    //         // color: coloris[index % coloris.length],
                    //         ),
                    //   ),
                    // ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    index++;
                  });
                },
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue[50],
                padding: const EdgeInsets.all(2),
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.35,
                        height: 110,
                        // autoPlay: true,
                        // autoPlayInterval: Duration(seconds: 2),
                        // autoPlayAnimationDuration: Duration(milliseconds: 800),
                        // autoPlayCurve: Curves.fastOutSlowIn,
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
                                  style: const TextStyle(
                                      fontFamily: "bungeeShade",
                                      color: Colors.white,
                                      fontSize: 30),
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
                        height: 110,
                        // autoPlay: true,
                        // autoPlayInterval: Duration(seconds: 2),
                        // autoPlayAnimationDuration: Duration(milliseconds: 800),
                        // autoPlayCurve: Curves.fastOutSlowIn,
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
                                  style: const TextStyle(
                                      fontFamily: "bungeeShade",
                                      color: Colors.black,
                                      fontSize: 30),
                                ),
                              )),
                          onTap: () {
                            speak(card2["colornameis"].toString());
                            log(card2["coloris"].toString());
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




/* import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class ColourPage extends StatefulWidget {
  const ColourPage({Key? key}) : super(key: key);

  @override
  State<ColourPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColourPage> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  final List<String> _colorname = [
    "RED",
    "GREEN",
    "BLUE",
    "YELLOW",
    "WHITE",
    "BLACK",
    "PINK",
    "PURPLE",
    "BROWN",
    "ORANGE",
    "GREY",
    "INDIGO",
  ];

  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.white,
    Colors.black,
    Colors.pink,
    Colors.purple,
    Colors.brown,
    Colors.deepOrange,
    Colors.grey,
    Colors.indigo,
  ];

  int _index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.blue[50],
          toolbarHeight: 150,
          title: InkWell(
            onTap: () => speak(
              _colorname[_index % _colorname.length],
            ),
            child: Text(
              _colorname[_index % _colorname.length],
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                fontFamily: "Nosifer",
                color: _colors[_index % _colors.length],
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 5,
                child: InkWell(
                  child: Container(
                    color: _colors[_index % _colors.length],
                  ),
                  onTap: () {
                    setState(() {
                      _index++;
                    });
                  },
                )),
            Expanded(
                flex: 1,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ElevatedButton(
                      autofocus: true,

                      // style: ButtonStyle(shape: ) ,
                      onPressed: () {
                        setState(() {
                          _index++;
                        });
                      },
                      child: const Text(
                        "click here to show random color",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Opacity(
                      opacity: .3,
                      child: InkWell(
                        child: const Icon(
                          Icons.fingerprint,
                          size: 100,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          setState(() {
                            _index++;
                          });
                        },
                      ),
                    ),
                    Opacity(
                      opacity: .2,
                      child: InkWell(
                        child: const Icon(
                          Icons.circle,
                          size: 130,
                        ),
                        onTap: () {
                          setState(() {
                            _index++;
                          });
                        },
                      ),
                    )
                  ],
                )

                /*  ElevatedButton(
                onPressed: () {
                  setState(() {
                    _index++;
                  });
                },
                child: const Text("click here to change color")) */
                ),
          ],
        ));
  }
}
 */