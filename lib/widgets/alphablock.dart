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
        height: screeensize.height / 9.6,
        width: screeensize.width / 4.4,
        child: Card(
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: (BorderRadius.circular(10))),
          elevation: 5,
          margin: const EdgeInsets.all(1),
          color: Colors.blue[50],
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 58,
                      width: 58,
                      child: Image.asset(widget.img),
                    ),
                    const SizedBox(
                      height: 12,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.cap,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[600]),
                    ),
                    Text(
                      widget.small,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[400]),
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
