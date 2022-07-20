import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:learn/pages/main_drawer.dart';
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
    const PuzzleAlpha(),
    const PuzzleNum(),
    const PuzzlePage(),
  ];

  List<Map<String, dynamic>> menudata = [
    {
      "menuimg": 'assets/menuIcon/alpha.png',
      "menudescription": "MATCH TO ALPHABET"
    },
    {
      "menuimg": 'assets/menuIcon/num.png',
      "menudescription": "MATCH TO NUMBER"
    },
    {
      "menuimg": 'assets/menuIcon/color.png',
      "menudescription": "MATCH TO COLOR"
    },
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
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
