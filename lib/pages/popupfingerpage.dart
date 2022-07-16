import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PopUpFingerPage extends StatefulWidget {
  final String img;
  final String f;
  final String description;

  const PopUpFingerPage({
    Key? key,
    required this.img,
    required this.description,
    required this.f,
  }) : super(key: key);

  @override
  State<PopUpFingerPage> createState() => _PopUpPageFingerState();
}

class _PopUpPageFingerState extends State<PopUpFingerPage> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => speak(
          " ${widget.description} ${int.parse(widget.f) == 1 ? 'FINGER' : 'FINGERS'}"),
      child: Column(
        children: [
          SizedBox(
            height: 500,
            child: Image.asset(
              widget.img,
            ),
          ),
          Text(
            "${widget.description} ${int.parse(widget.f) == 1 ? 'FINGER' : 'FINGERS'}",
            style: const TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
