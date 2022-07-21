import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PopUpPage extends StatefulWidget {
  final String miniimage;
  final String minidescription;
  final String cap;
  const PopUpPage(
      {Key? key,
      required this.miniimage,
      required this.minidescription,
      required this.cap})
      : super(key: key);

  @override
  State<PopUpPage> createState() => _PopUpPageState();
}

class _PopUpPageState extends State<PopUpPage> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => speak("${widget.cap} for ${widget.minidescription}"),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/2.3,
            child: Image.asset(
              widget.miniimage,
            ),
          ),
          Text(
            "${widget.cap} for ${widget.minidescription}",
            style: TextStyle(fontSize: width/9),
          ),
        ],
      ),
    );
  }
}
