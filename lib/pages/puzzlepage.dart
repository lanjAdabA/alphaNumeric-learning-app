import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:learn/pages/puzzlemenupage.dart';

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({Key? key}) : super(key: key);

  @override
  State<PuzzlePage> createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  final Map<String, bool> score = {};

  final Map choices = {
    "🍎": Colors.red,
    "🍊": Colors.orange,
    "🍋": Colors.yellow,
    "🍆": Colors.purple,
    "🥦": Colors.green,
    "🥔": Colors.brown,
  };

  int seed = 0;
  int stem = 6;

  @override
  void dispose() {
    super.dispose();
    // print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    " -- Match picture to color",
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
                stem--;
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
                  feedback: Emoji(
                    emoji: emoji,
                  ),
                  childWhenDragging: const Emoji(emoji: "🔲"),
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
                  child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                );
              }).toList()
                ..shuffle(Random(stem)),
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
            alignment: Alignment.center,
         height: 120,
            width: 200,
            child: const Text(
              "👍 correct!",
              style: TextStyle(fontSize: 18, fontFamily: "PressStart"),
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: choices[emoji],
            ),
            height: 120,
            width: 200,
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
          if (score.length == 6) {
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
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "Play again",
                                      style: TextStyle(fontSize: 24),
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
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const PuzzleMenuPage();
                                      }));
                                    },
                                    child: const Text(
                                      "Menu Page",
                                      style: TextStyle(fontSize: 24),
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
          style: const TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}
