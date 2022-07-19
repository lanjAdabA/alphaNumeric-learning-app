import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn/pages/alphachart.dart';
import 'package:learn/pages/colorspage.dart';
import 'package:learn/pages/numpage.dart';
import 'package:learn/pages/puzzlemenupage.dart';

void main(List<String> args) {
  WidgetsFlutterBinding();
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
  State<LearnApp> createState() => LearnAppState();
}

class LearnAppState extends State<LearnApp> {
  int selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      selectedIndex = index;
      HapticFeedback.lightImpact();
    });
  }

  final List chartPage = [
    const AlphaChart(),
    const NumPage(),
    const ColourPage(),
    const PuzzleMenuPage()
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Scaffold(
        body: chartPage[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(0, 48, 48, 50),
            selectedItemColor: const Color.fromARGB(255, 162, 16, 206),
            unselectedItemColor: const Color.fromARGB(255, 158, 160, 155),
            currentIndex: selectedIndex,
            selectedFontSize: 16,
            showUnselectedLabels: true,
            unselectedFontSize: 10,
            enableFeedback: true,
            onTap: navigationBottomBar,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.abc_outlined), label: "ALPHABET (A B C)"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.format_list_numbered_outlined),
                  label: "NUMBERS (1 2 3)"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.color_lens_outlined), label: "COLORS"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.extension_outlined), label: "EXERCISE"),
            ]),
      ),
    );
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            buttonPadding: const EdgeInsets.all(20),
            title: const Text("Are you sure you want to exit?"),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text("Ok"),
              ),
            ],
          );
        }));

    return exitApp;
  }
}
