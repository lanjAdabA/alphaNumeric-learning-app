import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PopUpCenterPage extends StatefulWidget {
  final String img;
  final String description;
  const PopUpCenterPage({
    Key? key,
    required this.img,
    required this.description,
  }) : super(key: key);

  @override
  State<PopUpCenterPage> createState() => _PopUpPageCenterState();
}

class _PopUpPageCenterState extends State<PopUpCenterPage> {
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
      onTap: () => speak(widget.description),
      child: Column(
        children: [
          SizedBox(
            height: 500,
            child: Image.asset(
              widget.img,
            ),
          ),
          Text(
            widget.description,
            style: const TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
