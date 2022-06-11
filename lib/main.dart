import 'package:flutter/material.dart';
import 'package:learn/widgets/alphachart.dart';
import 'package:learn/widgets/colorspage.dart';
import 'package:learn/widgets/numpage.dart';
import 'widgets/alphachart.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learning App",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: const LearnApp(),
    );
  }
}

class LearnApp extends StatefulWidget {
  const LearnApp({Key? key}) : super(key: key);

  @override
  State<LearnApp> createState() => _LearnAppState();
}

class _LearnAppState extends State<LearnApp> {
  int _selectedIndex = 0;
  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _chartPage = [
    const AlphaChart(),
    const NumPage(),
    const ColourPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 23, 23),
        foregroundColor: const Color.fromARGB(255, 176, 189, 158),
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text("menu page"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz_rounded,
            ),
          ),
        ],
      ), */
      body: _chartPage[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(0, 48, 48, 50),
          selectedItemColor: const Color.fromARGB(255, 162, 16, 206),
          unselectedItemColor: const Color.fromARGB(255, 129, 131, 125),
          currentIndex: _selectedIndex,
          selectedFontSize: 16,
          showUnselectedLabels: true,
          unselectedFontSize: 10,
          enableFeedback: true,
          onTap: _navigationBottomBar,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.apps), label: "ALPHABET (A B C)"),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps), label: "NUMBERS (1 2 3)"),
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "COLORS"),
          ]), // body: Container(
      //   color: Colors.blueGrey,
      //   child:const  Center(child:  Text("data")),
      // ),
    );
  }
}
