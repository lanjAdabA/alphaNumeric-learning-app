import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
// import 'package:flutter_beep/flutter_beep.dart';

class PuzzleAlpha extends StatefulWidget {
  const PuzzleAlpha({Key? key}) : super(key: key);

  @override
  State<PuzzleAlpha> createState() => _PuzzleAlphaState();
}

class _PuzzleAlphaState extends State<PuzzleAlpha> {
  final Map<String, bool> score = {};

  final Map choices = {
    "A": " 🍎 A-Apple",
    "B": " ⚽️ B-Ball",
    "C": " 🚗 C-Car",
    "D": " 🦮 D-Dog",
    "E": " 🥚 E-Egg",
    "F": " 🐠 F-Fish",
    "G": " 🍇 G-Grapes",
    "H": " 🏠 H-House",
  };
//
  // final Map choices2 = {
  //   "🍎": {color: Colors.red, text: 'Red'},
  //inorder to assign another attribute
  //   "🍊": Colors.orange,
  //   "🍋": Colors.yellow,
  //   "🍆": Colors.purple,
  //   "🥦": Colors.green,
  //   "🥔": Colors.brown,
  // };

  int seed = 0;
  // final AudioPlayer _audioController =AudioPlayer() ;
  // AudioPlayer audioPlugin = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                'Score ${score.length} /8',
                style: const TextStyle(fontFamily: "PressStart"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "*Hint*",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 182, 189, 179)),
                  ),
                  Text(
                    " -- Match letter to picture",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 156, 172, 172)),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.refresh_outlined),
            onPressed: () {
              setState(() {
                score.clear();
                seed++;
              });
            }),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: choices.keys.map((emoji) {
                return Draggable<String>(
                  data: emoji,
                  feedback: Emoji(emoji: emoji),
                  childWhenDragging: const Emoji(emoji: "⍰"),
                  child: Emoji(emoji: score[emoji] == true ? '☑️' : emoji),
                );
              }).toList(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
                    ..shuffle(Random(seed)),
            )
          ],
        ));
  }

  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: ((BuildContext context, List<String?> incoming, List rejected) {
        if (score[emoji] == true) {
          return Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Colors.white),
            // color: Colors.white,
            alignment: Alignment.center,
            height: 80,
            width: 200,
            child: const Text(
              "👍 correct!",
              style: TextStyle(fontSize: 18, fontFamily: "PressStart"),
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.blue[50]
                // color: choices[emoji],
                ),
            // color: choices[emoji],
            height: 80,
            width: 200,
            child: Row(children: [
              // Emoji(emoji: emoji),
              Text(
                choices[emoji].toString(),
                style: const TextStyle(fontSize: 36, fontFamily: "anton"),
              ),
            ]),
          );
        }
      }),
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
        });
        FlutterRingtonePlayer.play(fromAsset: "assets/success.wav");
        // FlutterBeep.beep(false);
        // FlutterBeep.playSysSound(1);
        // audioPlugin.play('success.wav');
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  const Emoji({Key? key, required this.emoji}) : super(key: key);
  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 100,
        padding: const EdgeInsets.all(10),
        child: Text(
          emoji,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 60,
            fontFamily: "TitanOne",
          ),
        ),
      ),
    );
  }
}


// ctrl+cmd+space "