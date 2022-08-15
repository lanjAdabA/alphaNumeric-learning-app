import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:learn/main.dart';

class PuzzleShape extends StatefulWidget {
  const PuzzleShape({Key? key}) : super(key: key);

  @override
  State<PuzzleShape> createState() => PuzzleShapeState();
}

class PuzzleShapeState extends State<PuzzleShape> {
  final Map<String, bool> score = {};
  Map<dynamic, dynamic> generated = {};

  final List<Map<String, dynamic>> choices = [
    {
      "count": "assets/shapedrag/dice.png",
      "figr": "assets/shapedrag/squaredrag.png"
    },
    {
      "count": "assets/shapedrag/gift.png",
      "figr": "assets/shapedrag/rectangledrag.png"
    },
    {
      "count": "assets/shapedrag/hat.jpeg",
      "figr": "assets/shapedrag/triangledrag.png"
    },
    {
      "count": "assets/shapedrag/ball.png",
      "figr": "assets/shapedrag/circledrag.png"
    },
    {
      "count": "assets/shapedrag/cake.png",
      "figr": "assets/shapedrag/heartdrag.png"
    },
    {
      "count": "assets/shapedrag/starfish.jpeg",
      "figr": "assets/shapedrag/stardrag.png"
    },
    {
      "count": "assets/shapedrag/egg.jpeg",
      "figr": "assets/shapedrag/ovaldrag.png"
    },
  ];

  int seed = 1;
  int stem = 5;

  randomgen() {
    generated = {};
    List keys = [];
    for (int i = 0; i < 7; i++) {
      keys.add(i);
    }
    final random = Random();
    int index = 0;

    for (int i = 0; i < 5; i++) {
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
              'Score ${score.length} /5',
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: generated.keys
                  .map((emoji) => _buildDragTarget(emoji))
                  .toList()
                ..shuffle(Random(seed)),
            ),
          ],
        ),
      ),
    );
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
            height: MediaQuery.of(context).size.width / 3.6,
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
              color: Colors.white,
            ),
            height: MediaQuery.of(context).size.width / 3.6,
            width: 200,
            child: Center(child: Image.asset(generated[emoji])

                // Text(
                //   generated[emoji].toString(),
                //   style: const TextStyle(fontSize: 28, fontFamily: "anton"),
                // ),
                ),
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
          if (score.length % 5 == 0) {
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
        height: MediaQuery.of(context).size.height * .06,
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
