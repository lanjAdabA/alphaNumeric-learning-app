import 'package:flutter/material.dart';
import 'package:learn/widgets/alphablock.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlphaChart();
  }
}

class AlphaChart extends StatefulWidget {
  const AlphaChart({Key? key}) : super(key: key);

  @override
  State<AlphaChart> createState() => _ChartState();
}

class _ChartState extends State<AlphaChart> {
  final listSize = 26;
  List<Map<String, dynamic>> data = [
    {
      "letterkey": 1,
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/A1-1.png",
      "cap": "A",
      "small": "a"
    },
    {
      "letterkey": 2,
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/B1.png",
      "cap": "B",
      "small": "b"
    },
    {
      "letterkey": 3,
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/C2.png",
      "cap": "C",
      "small": "c"
    },
    {
      "letterkey": 4,
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/D1.png",
      "cap": "D",
      "small": "d"
    },
    {
      "letterkey": 5,
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/E1.png",
      "cap": "E",
      "small": "e"
    },
    {
      "letterkey": 6,
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/F1.png",
      "cap": "F",
      "small": "f"
    },
    {
      "letterkey": 7,
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/G1.png",
      "cap": "G",
      "small": "g"
    },
    {
      "letterkey": 8,
      "img": "https://alphabetimals.com/wp-content/uploads/H1.png",
      "cap": "H",
      "small": "h"
    },
    {
      "letterkey": 9,
      "img": "https://alphabetimals.com/wp-content/uploads/I1.png",
      "cap": "I",
      "small": "i"
    },
    {
      "letterkey": 10,
      "img": "https://alphabetimals.com/wp-content/uploads/J4.png",
      "cap": "J",
      "small": "j"
    },
    {
      "letterkey": 11,
      "img": "https://alphabetimals.com/wp-content/uploads/K4.png",
      "cap": "K",
      "small": "k"
    },
    {
      "letterkey": 12,
      "img": "https://alphabetimals.com/wp-content/uploads/L1.png",
      "cap": "L",
      "small": "l"
    },
    {
      "letterkey": 13,
      "img": "https://alphabetimals.com/wp-content/uploads/M1.png",
      "cap": "M",
      "small": "m"
    },
    {
      "letterkey": 14,
      "img": "https://alphabetimals.com/wp-content/uploads/N3.png",
      "cap": "N",
      "small": "n"
    },
    {
      "letterkey": 15,
      "img": "https://alphabetimals.com/wp-content/uploads/O6.png",
      "cap": "O",
      "small": "o"
    },
    {
      "letterkey": 16,
      "img": "https://alphabetimals.com/wp-content/uploads/P8.png",
      "cap": "P",
      "small": "p"
    },
    {
      "letterkey": 17,
      "img": "https://alphabetimals.com/wp-content/uploads/Q1.png",
      "cap": "Q",
      "small": "q"
    },
    {
      "letterkey": 18,
      "img": "https://alphabetimals.com/wp-content/uploads/R3.png",
      "cap": "R",
      "small": "r"
    },
    {
      "letterkey": 19,
      "img": "https://alphabetimals.com/wp-content/uploads/S1.png",
      "cap": "S",
      "small": "s"
    },
    {
      "letterkey": 20,
      "img": "https://alphabetimals.com/wp-content/uploads/T2.png",
      "cap": "T",
      "small": "t"
    },
    {
      "letterkey": 21,
      "img": "https://alphabetimals.com/wp-content/uploads/U4.png",
      "cap": "U",
      "small": "u"
    },
    {
      "letterkey": 22,
      "img": "https://alphabetimals.com/wp-content/uploads/V1.png",
      "cap": "V",
      "small": "v"
    },
    {
      "letterkey": 23,
      "img": "https://alphabetimals.com/wp-content/uploads/W7.png",
      "cap": "W",
      "small": "w"
    },
    {
      "letterkey": 24,
      "img": "https://alphabetimals.com/wp-content/uploads/X4.png",
      "cap": "X",
      "small": "x"
    },
    {
      "letterkey": 25,
      "img": "https://alphabetimals.com/wp-content/uploads/Y1.png",
      "cap": "Y",
      "small": "y"
    },
    {
      "letterkey": 26,
      "img": "https://alphabetimals.com/wp-content/uploads/Z1.png",
      "cap": "Z",
      "small": "z"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(0, 60, 60, 64),
        appBar: AppBar(
          title: const Text("Alphabet_Chart"),
          centerTitle: true,
        ),
        body: Wrap(
          spacing: 3,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          children: List.generate(listSize, (index) {
            return InkWell(
              child: AlphaBlock(
                  key: data[index]["letterkey"],
                  img: data[index]["img"],
                  cap: data[index]["cap"],
                  small: data[index]["small"]),
              onTap: () {},
            );
          }),
        )
        /* GridView.builder(
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
          }), */
        );
  }
}
