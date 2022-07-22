import 'package:flutter/material.dart';
import 'package:learn/pages/main_drawer.dart';
import 'package:learn/widgets/numblock.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class NumPage extends StatefulWidget {
  const NumPage({
    Key? key,
  }) : super(key: key);

  @override
  State<NumPage> createState() => _NumblockState();
}

class _NumblockState extends State<NumPage> {
  final List<Map<String, dynamic>> numdata = [
    {
      'fig': "1",
      'inwords': 'ONE',
      "color": Colors.red,
      "image": "assets/fingerNumber/1.jpg",
      "speechlong": "o , n , e . one"
    },
    {
      'fig': "2",
      'inwords': 'TWO',
      "color": Colors.pink,
      "image": "assets/fingerNumber/2.jpg",
      "speechlong": "t : w : o . two"
    },
    {
      'fig': "3",
      'inwords': 'THREE',
      "color": Colors.purple,
      "image": "assets/fingerNumber/3.jpg",
      "speechlong": "t : h : r : e : e . three"
    },
    {
      'fig': "4",
      'inwords': 'FOUR',
      "color": Colors.indigo,
      "image": "assets/fingerNumber/4.jpg",
      "speechlong": " f : o : u : r . four"
    },
    {
      'fig': "5",
      'inwords': 'FIVE',
      "color": Colors.blue,
      "image": "assets/fingerNumber/5.jpg",
      "speechlong": "f : i : v : e . five"
    },
    {
      'fig': "6",
      'inwords': 'SIX',
      "color": Colors.cyan,
      "image": "assets/fingerNumber/6.jpg",
      "speechlong": "s : i : x . six"
    },
    {
      'fig': "7",
      'inwords': 'SEVEN',
      "color": Colors.green,
      "image": "assets/fingerNumber/7.jpg",
      "speechlong": "S : e : v : e : n . seven"
    },
    {
      'fig': "8",
      'inwords': 'EIGHT',
      "color": Colors.yellow,
      "image": "assets/fingerNumber/8.jpg",
      "speechlong": "e : i : g : h : t  . eight"
    },
    {
      'fig': "9",
      'inwords': 'NINE',
      "color": Colors.amber,
      "image": "assets/fingerNumber/9.jpg",
      "speechlong": "n : i : n : e . nine"
    },
    {
      'fig': "10",
      'inwords': 'TEN',
      "color": Colors.orange,
      "image": "assets/fingerNumber/10.jpg",
      "speechlong": "t : e : n . ten"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Number_Chart"),
        centerTitle: true,
      ),
      drawer: const MainDrawer(),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(w / 30),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: const Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(milliseconds: 2500),
                  child: Container(
                    margin: EdgeInsets.only(bottom: w / 80),
                    height: w / 6,
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
                    child: NumBlock(
                      fig: numdata[index]['fig'],
                      inwords: numdata[index]['inwords'],
                      color: numdata[index]["color"],
                      image: numdata[index]['image'],
                      speechlong: numdata[index]["speechlong"],
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
