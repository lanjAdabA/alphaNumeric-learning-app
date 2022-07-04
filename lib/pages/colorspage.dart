import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:learn/widgets/colortileblock.dart';

class ColourPage extends StatefulWidget {
  const ColourPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ColourPage> createState() => ColorPageState();
}

class ColorPageState extends State<ColourPage> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  final List<Map<String, dynamic>> card2 = [
    {"colorname2": "amber", "color2": Colors.amber},
    {"colorname2": "cyan", "color2": Colors.cyan},
    {"colorname2": "lime", "color2": Colors.lime},
    {"colorname2": "bluegrey", "color2": Colors.blueGrey},
  ];

  // final List<String> colorname1 = [
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

  // final List<Color> colors1 = [
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

  final List<Map<String, dynamic>> card1 = [
    {"colorname1": "RED", "colors1": Colors.red},
    {"colorname1": "GREEN", "colors1": Colors.green},
    {"colorname1": "BLUE", "colors1": Colors.blue},
    {"colorname1": "YELLOW", "colors1": Colors.yellow},
    {"colorname1": "WHITE", "colors1": Colors.white},
    {"colorname1": "BLACK", "colors1": Colors.black},
    {"colorname1": "PINK", "colors1": Colors.pink},
    {"colorname1": "PURPLE", "colors1": Colors.purple},
    {"colorname1": "BROWN", "colors1": Colors.brown},
    {"colorname1": "ORANGE", "colors1": Colors.deepOrange},
    {"colorname1": "GREY", "colors1": Colors.grey},
    {"colorname1": "INDIGO", "colors1": Colors.indigo},
  ];

  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  // List card1 = [
  //   const ColorTile(
  //     colour: Colors.amber,
  //     colourname: '',
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
                        color: card1[index]["color1"],
                      ),
                      margin: const EdgeInsets.all(20),
                    ),
                    Container(
                      color: Colors.black,
                      child: Text(
                        card1[index]["colorname"],
                        style: const TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            fontFamily: "bungeeShade",
                            color: Colors.amber
                            // color: colors1[index % colors1.length],
                            ),
                      ),
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
                        return Builder(builder: (BuildContext context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width,
                            child: ColorTile(
                              colourname: card1[index]["colorname"],
                              colour: card1[index]["color1"],
                            ),
                          );
                        });
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
                      items: card1.map((card2) {
                        return Builder(builder: (BuildContext context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width,
                            child: ColorTile(
                              colourname: card1[index]["colorname1"],
                              colour: card1[index]["color1"],
                            ),
                          );
                        });
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