import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:learn/pages/main_drawer.dart';
import 'package:learn/pages/puzzlealpha.dart';
import 'package:learn/pages/puzzlecount.dart';
import 'package:learn/pages/puzzlenum.dart';
import 'package:learn/pages/puzzlepage.dart';
import 'package:learn/pages/puzzleshape.dart';
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
    const PuzzleAlpha(),
    const PuzzleNum(),
    const PuzzlePage(),
    const PuzzleCount(),
    const PuzzleShape(),
  ];

  List<Map<String, dynamic>> menudata = [
    {"menuimg": 'assets/alphaMenu.png', "menudescription": "Alphabet Matching"},
    {"menuimg": 'assets/numMenu.png', "menudescription": "Number Matching"},
    {"menuimg": 'assets/colorMenu.png', "menudescription": "Color Matching"},
    {"menuimg": 'assets/countMenu.png', "menudescription": "Count and Match"},
    {"menuimg": 'assets/shapeMenu.png', "menudescription": "Shape Matching"},
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text("Exercises_Menu"),
        centerTitle: true,
      ),
      drawer: const MainDrawer(),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(w / 30),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: 5,
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
                      border: Border.all(color: Colors.black),
                      color: Colors.blue[50],
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Scaffold(
                                body: menuPage[index],
                              );
                            },
                          ),
                        );
                      },
                      child: PluzzleMenuBLock(
                        menuimg: menudata[index]["menuimg"],
                        menudescription: menudata[index]["menudescription"],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
