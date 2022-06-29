import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

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



/* 
class _TextToSpeechState extends State<TextToSpeech> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.3);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          child: const Center(child: Text("hello")),
          onDoubleTap: () => speak("helloE")
          ),
    );
  }
}


 */