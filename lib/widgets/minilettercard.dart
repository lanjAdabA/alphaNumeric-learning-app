import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MiniLetterCard extends StatefulWidget {
  final String miniimage;
  final String minidescription;
  const MiniLetterCard(
      {Key? key, required this.miniimage, required this.minidescription})
      : super(key: key);

  @override
  State<MiniLetterCard> createState() => _MiniLeterCardState();
}

class _MiniLeterCardState extends State<MiniLetterCard> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
         double height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () => speak(widget.minidescription),
    
        child: Card(
          child: Column(
            
            children: [
              SizedBox(
                height: height/7,
                child: Image.asset(
                  widget.miniimage,
                ),
              ),
              Text(
                widget.minidescription,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      
    );
  }
}
