import 'package:flutter/material.dart';
import 'package:learn/widgets/alphablock.dart';

class AlphaChart extends StatelessWidget {
  const AlphaChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Chart();
  }
}

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<Map<String, dynamic>> data = [
    {
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/A1-1.png",
      "cap": "A",
      "small": "a"
    },
    {
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/B1.png",
      "cap": "B",
      "small": "b"
    },
    {
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/C2.png",
      "cap": "C",
      "small": "c"
    },
    {
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/D1.png",
      "cap": "D",
      "small": "d"
    },
    {
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/E1.png",
      "cap": "E",
      "small": "e"
    },
    {
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/F1.png",
      "cap": "F",
      "small": "f"
    },
    {
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/G1.png",
      "cap": "G",
      "small": "g"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/H1.png",
      "cap": "H",
      "small": "h"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/I1.png",
      "cap": "I",
      "small": "i"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/J4.png",
      "cap": "J",
      "small": "j"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/K4.png",
      "cap": "K",
      "small": "k"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/L1.png",
      "cap": "L",
      "small": "l"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/M1.png",
      "cap": "M",
      "small": "m"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/N3.png",
      "cap": "N",
      "small": "n"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/O6.png",
      "cap": "O",
      "small": "o"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/P8.png",
      "cap": "P",
      "small": "p"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/Q1.png",
      "cap": "Q",
      "small": "q"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/R3.png",
      "cap": "R",
      "small": "r"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/S1.png",
      "cap": "S",
      "small": "s"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/T2.png",
      "cap": "T",
      "small": "t"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/U4.png",
      "cap": "U",
      "small": "u"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/V1.png",
      "cap": "V",
      "small": "v"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/W7.png",
      "cap": "W",
      "small": "w"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/X4.png",
      "cap": "X",
      "small": "x"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/Y1.png",
      "cap": "Y",
      "small": "y"
    },
    {
      "img": "https://alphabetimals.com/wp-content/uploads/Z1.png",
      "cap": "Z",
      "small": "z"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alphabet_Chart"),
        centerTitle: true,
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Block(
                img: data[index]["img"],
                cap: data[index]["cap"],
                small: data[index]["small"]);
          }),
    );
  }
}
