import 'package:flutter/material.dart';
import 'package:learn/widgets/alphablock.dart';
import 'package:learn/widgets/alphachart.dart';
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
      theme: ThemeData(primarySwatch: Colors.orange),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: const Chart(),
      // body: Container(
      //   color: Colors.blueGrey,
      //   child:const  Center(child:  Text("data")),
      // ),
    );
  }
}
