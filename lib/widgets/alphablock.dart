import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AlphaBlock extends StatefulWidget {
  final String img;
  final String cap;
  final String small;
  const AlphaBlock(
      {Key? key, required this.img, required this.cap, required this.small})
      : super(key: key);

  @override
  State<AlphaBlock> createState() => _AplhaState();
}

class _AplhaState extends State<AlphaBlock> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    var screeensize = MediaQuery.of(context).size;
    return InkWell(
      child: SizedBox(
        height: screeensize.width / 4.1,
        width: screeensize.width / 4.4,
        child: Card(
          margin: const EdgeInsets.all(1),
          color: Colors.blue[50],
          child: Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 58,
                  width: 58,
                  child: Image.asset(widget.img),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.cap,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]),
                    ),
                    Text(
                      widget.small,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
