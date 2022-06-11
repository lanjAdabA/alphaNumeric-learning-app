import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class PageColor extends StatelessWidget {
  const PageColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ColourPage();
  }
}

class ColourPage extends StatefulWidget {
  const ColourPage({Key? key}) : super(key: key);

  @override
  State<ColourPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColourPage> {
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
          title: Text(
            _colorname[_index % _colorname.length],
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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