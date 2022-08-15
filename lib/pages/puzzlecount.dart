import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:learn/main.dart';

class PuzzleCount extends StatefulWidget {
  const PuzzleCount({Key? key}) : super(key: key);

  @override
  State<PuzzleCount> createState() => _PuzzleCountState();
}

class _PuzzleCountState extends State<PuzzleCount> {
  final Map<String, bool> score = {};
  Map<dynamic, dynamic> generated = {};

  final List<Map<String, dynamic>> choices = [
    {"count": "assets/1x.png", "figr": "assets/one.png"},
    {"count": "assets/2x.png", "figr": "assets/two.png"},
    {"count": "assets/3x.png", "figr": "assets/three.png"},
    {"count": "assets/4x.png", "figr": "assets/four.png"},
    {"count": "assets/5x.png", "figr": "assets/five.png"},
    {"count": "assets/6x.png", "figr": "assets/six.png"},
    {"count": "assets/7x.png", "figr": "assets/seven.png"},
    {"count": "assets/8x.png", "figr": "assets/eight.png"},
    {"count": "assets/9x.png", "figr": "assets/nine.png"},
    {"count": "assets/10x.png", "figr": "assets/ten.png"},
  ];

  int seed = 1;
  int stem = 5;

  randomgen() {
    generated = {};
    List keys = [];
    for (int i = 0; i < 10; i++) {
      keys.add(i);
    }
    final random = Random();
    int index = 0;

    for (int i = 0; i < 6; i++) {
      index = keys[random.nextInt(keys.length)];
      keys.removeWhere((k) => k == index); // remove the element
      generated[choices[index]['figr']] =
          choices[index]['count']; // {"A": "value"}
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
                      fontSize: 14, color: Color.fromARGB(255, 182, 189, 179)),
                ),
                Text(
                  " -- count and match",
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 156, 172, 172)),
                ),
              ],
            ),
            const SizedBox(
              height: 1,
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
      body: Column(
        children: [
          Expanded(
            flex: 78,
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: generated.keys
                  .map((emoji) => _buildDragTarget(emoji))
                  .toList()
                ..shuffle(Random(seed)),
            ),
          ),
          Expanded(
            flex: 22,
            child: GridView.count(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              crossAxisCount: 5,
              children: generated.keys.map((emoji) {
                return Draggable(
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
                  childWhenDragging: const Emoji(emoji: "assets/box.png"),
                  child: Emoji(
                      emoji: score[emoji] == true ? 'assets/tick.png' : emoji),
                );
              }).toList()
                ..shuffle(Random(stem)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDragTarget(emoji) {
    return Container(
      height: MediaQuery.of(context).size.height * .01,
      padding: const EdgeInsets.all(10),
      child: DragTarget<String>(
        builder:
            ((BuildContext context, List<String?> incoming, List rejected) {
          if (score[emoji] == true) {
            return Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.width / 3.6,
              width: 200,
              child: Image.asset(emoji),
            );
          } else {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[50],
              ),
              height: MediaQuery.of(context).size.width / 3.6,
              width: 200,
              child: Center(child: Image.asset(generated[emoji])),
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
                                    " 1. Select 'Play again' to continue Playing \n   -- click the refresh button to refresh \n \n 2. Select 'Main Page' to go back "),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const MyApp();
                                        }));
                                      },
                                      child: Text(
                                        "Main Page",
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
      ),
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
        height: MediaQuery.of(context).size.height * .08,
        child: Image.asset(emoji),
        // child: Text(
        //   emoji,
        //   style: const TextStyle(
        //     color: Colors.black,
        //     fontSize: 20,
        //   ),
        // ),
      ),
    );
  }
}
