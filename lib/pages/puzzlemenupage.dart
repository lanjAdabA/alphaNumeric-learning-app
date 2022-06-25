import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:learn/pages/puzzlealpha.dart';
import 'package:learn/pages/puzzlenum.dart';
import 'package:learn/pages/puzzlepage.dart';
import 'package:learn/widgets/puzzlemenublock.dart';

class PuzzleMenuPage extends StatefulWidget {
  const PuzzleMenuPage({Key? key}) : super(key: key);

  @override
  State<PuzzleMenuPage> createState() => _PuzzleMenuPageState();
}

class _PuzzleMenuPageState extends State<PuzzleMenuPage> {
  int menuindex = 0;
  menuList(int index) {
    setState(() {
      menuindex = index;
    });
  }

  final List menuPage = [
    const Abc(),
    const Numv(),
    const PuzzlePage(),
  ];

  List<Map<String, dynamic>> menudata = [
    {
      "menuimg":
          'https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_600/https://alphabetimals.com/wp-content/uploads/albert_coloring.png',
      "menudescription": "MATCH TO ALPHABET"
    },
    {
      "menuimg":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_600/https://alphabetimals.com/wp-content/uploads/albert_typer.png",
      "menudescription": "MATCH TO NUMBER"
    },
    {
      "menuimg":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_300/https://alphabetimals.com/wp-content/uploads/albert_dictionary_cropped-1.png",
      "menudescription": "MATCH TO COLOR"
    },
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EXERCISES"),
        centerTitle: true,
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(w / 30),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: const Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                verticalOffset: -250,
                child: ScaleAnimation(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: Container(
                    margin: EdgeInsets.only(bottom: w / 20),
                    height: w / 4,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    //*
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Scaffold(
                                body: menuPage[index],
                              ); // const PuzzlePage();
                              // const Numv();
                              //const Abc();
                            },
                          ),
                        );
                      },
                      //*
                      child: PluzzleMenuBLock(
                        menuimg: menudata[index]["menuimg"],
                        menudescription: menudata[index]["menudescription"],
                      ),
                    ),
                    //*
                  ),
                  //*
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}