import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
// import 'package:flutter_beep/flutter_beep.dart';

class PuzzleNum extends StatefulWidget {
  const PuzzleNum({Key? key}) : super(key: key);

  @override
  State<PuzzleNum> createState() => _PuzzleNumState();
}

class _PuzzleNumState extends State<PuzzleNum> {
  final Map<String, bool> score = {};

  final Map choices = {
    "1": "One",
    "2": "Two",
    "3": "Three",
    "4": "Four",
    "5": "Five",
    "6": "Six",
    "7": "Seven",
    "8": "Eight",
    "9": "Nine",
    "10": "Ten",
  };

  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
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
                    " -- Match to color",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 156, 172, 172)),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Score ${score.length} /10',
                style: const TextStyle(fontFamily: "PressStart"),
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
            height: 70,
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
            height: 70,
            width: 200,
            child: Center(
                child: Text(
              choices[emoji],
              style: const TextStyle(fontSize: 36, fontFamily: "StickNoBills"),
            )),
          );
        }
      }),
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
        });
        FlutterRingtonePlayer.play(fromAsset: "assets/success.wav", volume: .3);
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
        height: 80,
        padding: const EdgeInsets.all(10),
        child: Text(
          emoji,
          style: const TextStyle(
              color: Colors.blue,
              fontSize: 56,
              fontWeight: FontWeight.bold,
              fontFamily: "StickNoBills"),
        ),
      ),
    );
  }
}


// ctrl+cmd+space "