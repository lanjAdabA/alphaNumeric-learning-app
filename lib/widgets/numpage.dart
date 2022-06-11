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
          itemExtent: 86,
          padding: const EdgeInsets.all(30),
          children: [
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-1_1.jpg",
              ),
              title: const Text(
                " -   ONE",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-2_1.jpg",
              ),
              title: const Text(
                " -   TWO",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-3_4.jpg",
              ),
              title: const Text(
                " -   THREE",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-4_1.jpg",
              ),
              title: const Text(
                " -   FOUR",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-5_2.jpg",
              ),
              title: const Text(
                " -   FIVE",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-6_1.jpg",
              ),
              title: const Text(
                " -   SIX",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-7_0.jpg",
              ),
              title: const Text(
                " -   SEVEN",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-8_1.jpg",
              ),
              title: const Text(
                " -   EIGHT",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-9_3.jpg",
              ),
              title: const Text(
                " -   NINE",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Image.network(
                "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-10_0.jpg",
              ),
              title: const Text(
                " -   TEN",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
