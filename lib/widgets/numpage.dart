import 'package:flutter/material.dart';

class PageNum extends StatelessWidget {
  const PageNum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NumPage();
  }
}

class NumPage extends StatefulWidget {
  const NumPage({Key? key}) : super(key: key);

  @override
  State<NumPage> createState() => _NumblockState();
}

class _NumblockState extends State<NumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Number_Chart"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        scrollDirection: Axis.vertical,
        children: [
          Row(
            children: const [
              Text(
                "1",
                style: TextStyle(
                    fontFamily: "CarterOne", fontSize: 60, color: Colors.red),
              ),
              Text(
                "   -   ONE",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "2",
                style: TextStyle(
                    fontFamily: "CarterOne", fontSize: 60, color: Colors.pink),
              ),
              Text(
                "   -   TWO",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "3",
                style: TextStyle(
                    fontFamily: "CarterOne",
                    fontSize: 60,
                    color: Colors.purple),
              ),
              Text(
                "   -   THREE",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "4",
                style: TextStyle(
                    fontFamily: "CarterOne",
                    fontSize: 60,
                    color: Colors.indigo),
              ),
              Text(
                "   -   FOUR",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "5",
                style: TextStyle(
                    fontFamily: "CarterOne", fontSize: 60, color: Colors.blue),
              ),
              Text(
                "   -   FIVE",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "6",
                style: TextStyle(
                    fontFamily: "CarterOne", fontSize: 60, color: Colors.cyan),
              ),
              Text(
                "   -   SIX",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "7",
                style: TextStyle(
                    fontFamily: "CarterOne", fontSize: 60, color: Colors.teal),
              ),
              Text(
                "   -   SEVEN",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "8",
                style: TextStyle(
                    fontFamily: "CarterOne", fontSize: 60, color: Colors.green),
              ),
              Text(
                "   -   EIGHT",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "9",
                style: TextStyle(
                    fontFamily: "CarterOne", fontSize: 60, color: Colors.lime),
              ),
              Text(
                "   -   NINE",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "10",
                style: TextStyle(
                    fontFamily: "CarterOne",
                    fontSize: 60,
                    color: Colors.yellow),
              ),
              Text(
                "   -   TEN",
                style: TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
