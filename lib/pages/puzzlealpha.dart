import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:learn/pages/puzzlemenupage.dart';

class PuzzleAlpha extends StatefulWidget {
  const PuzzleAlpha({Key? key}) : super(key: key);

  @override
  State<PuzzleAlpha> createState() => _PuzzleAlphaState();
}

class _PuzzleAlphaState extends State<PuzzleAlpha> {
  final Map<String, bool> score = {};
  Map<dynamic, dynamic> generated = {};

  final List<Map<String, dynamic>> choices = [
    {"alphabet": "A", "value": " 🍎 Apple"},
    {"alphabet": "B", "value": " ⚽️ Ball"},
    {"alphabet": "C", "value": " 🐈‍ Cat"},
    {"alphabet": "D", "value": " 🦮 Dog"},
    {"alphabet": "E", "value": " 🥚 Egg"},
    {"alphabet": "F", "value": " 🐠 Fish"},
    {"alphabet": "G", "value": " 🍇 Grapes"},
    {"alphabet": "H", "value": " 🏠 House"},
    {"alphabet": "I", "value": " 🍧 Icecream"},
    {"alphabet": "J", "value": " 🤡 Joker"},
    {"alphabet": "K", "value": " 🪁 Kite"},
    {"alphabet": "L", "value": " 🍋 Lemon"},
    {"alphabet": "M", "value": " 🐒 Monkey"},
    {"alphabet": "N", "value": " 🥜 Nuts"},
    {"alphabet": "O", "value": " 🍊 Orange"},
    {"alphabet": "P", "value": " 🖊 Pen"},
    {"alphabet": "Q", "value": " 👸🏼 Queen"},
    {"alphabet": "R", "value": " 🌹 Rose"},
    {"alphabet": "S", "value": " 🐏 Sheep"},
    {"alphabet": "T", "value": " 🐅 Tiger"},
    {"alphabet": "U", "value": " 🦄 Unicorn"},
    {"alphabet": "V", "value": " 🦺 Vest"},
    {"alphabet": "W", "value": " ⌚️ Watch"},
    {"alphabet": "X", "value": " 🎄 Xmas tree"},
    {"alphabet": "Y", "value": " 🪀 Yoyo"},
    {"alphabet": "Z", "value": " 🦓 Zebra"},
  ];

  int seed = 1;
  int stem = 5;

  randomgen() {
    generated = {};
    List keys = [];
    for (int i = 0; i < 26; i++) {
      keys.add(i);
    }
    final random = Random();
    int index = 0;

    for (int i = 0; i < 6; i++) {
      index = keys[random.nextInt(keys.length)];
      keys.removeWhere((k) => k == index); // remove the element
      generated[choices[index]['alphabet']] =
          choices[index]['value']; // {"A": "value"}
    }
  }

  @override
  void initState() {
    randomgen();
    // print(generated);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                'Score ${score.length} /6',
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
                randomgen();
                score.clear();
                seed++;
                stem--;
              });
            }),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: generated.keys.map((emoji) {
                return Draggable<String>(
                  data: emoji,
                  onDragEnd: (c) {
                    {
                      if (!c.wasAccepted) {
                        const snackBar1 = SnackBar(
                          duration: Duration(milliseconds: 500),
                          backgroundColor: Colors.red,
                          content: Text('OOPS! Try agaim'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar1);
                        FlutterRingtonePlayer.play(
                            fromAsset: "assets/error.wav", volume: .3);
                      }
                    }
                  },
                  feedback: Emoji(emoji: emoji),
                  childWhenDragging: const Emoji(emoji: "_"),
                  child: Emoji(emoji: score[emoji] == true ? '☑️' : emoji),
                );
              }).toList()
                ..shuffle(Random(stem)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: generated.keys
                  .map((emoji) => _buildDragTarget(emoji))
                  .toList()
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
            alignment: Alignment.center,
            width: 200,
            child: const Text(
              "👍 correct!",
              style: TextStyle(fontSize: 18, fontFamily: "PressStart"),
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[50]),
            height: MediaQuery.of(context).size.width / 3.6,
            width: 200,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                generated[emoji].toString(),
                style: const TextStyle(fontSize: 28, fontFamily: "anton"),
              ),
            ]),
          );
        }
      }),
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        if (data == emoji) {
          const snackBar = SnackBar(
            backgroundColor: Colors.green,
            duration: Duration(milliseconds: 500),
            content: Text('YEAH!  Good Job!'),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          FlutterRingtonePlayer.play(
              fromAsset: "assets/success.wav", volume: .3);
        }

        setState(() {
          score[emoji] = true;
          if (score.length % 6 == 0) {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      backgroundColor: Colors.blue[50],
                      title: const Text("🥳 CONGRATULATION, You did well."),
                      actions: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .2,
                              child: const Text(
                                  " 1. Select 'Play again' to continue Playing \n   -- click the refresh button to refresh \n \n 2. Select 'Menu Page' to go back "),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.blue)),
                                    onPressed: () {
                                      randomgen();

                                      setState(() {
                                        score.clear();
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Play again",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              20),
                                    )),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.blue)),
                                    onPressed: () {
                                      randomgen();

                                      setState(() {
                                        score.clear();
                                      });

                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const PuzzleMenuPage();
                                      }));
                                    },
                                    child: Text(
                                      "Menu Page",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              20),
                                    ))
                              ],
                            ),
                          ],
                        )
                      ],
                    ));
          }
        });
      },
      onLeave: (data) {},
      onMove: (data) {},
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
