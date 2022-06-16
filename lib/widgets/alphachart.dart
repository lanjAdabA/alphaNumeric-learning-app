import 'package:flutter/material.dart';
import 'package:learn/widgets/alphablock.dart';
import 'package:learn/widgets/letterpage.dart';

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
  // List<Map<String, dynamic>> minidata = [
  //   {},
  //   {
  //     "miniimage":
  //         "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
  //     "minidescription": "axe",
  //   },
  //   {
  //     "miniimage":
  //         "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
  //     "minidescription": "aaa",
  //   },
  //   {
  //     "miniimage":
  //         "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
  //     "minidescription": "ape",
  //   },
  // ];

  final listSize = 26;
  List<Map<String, dynamic>> data = [
    {
      "letterkey": "a",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/A1-1.png",
      "cap": "A",
      "small": "a",
      "description": "apple",
      "imgmain":
          "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
    },
    {
      "letterkey": "b",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/B1.png",
      "cap": "B",
      "small": "b",
      "description": "ball",
      "imgmain": "https://m.media-amazon.com/images/I/51IM+jkaEbL._SY355_.jpg",
    },
    {
      "letterkey": "c",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/C2.png",
      "cap": "C",
      "small": "c",
      "description": "cat",
      "imgmain":
          "https://thumbs.dreamstime.com/b/portrait-gray-tabby-cat-white-background-lovely-pet-portrait-gray-tabby-cat-white-background-126243718.jpg",
    },
    {
      "letterkey": "d",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/D1.png",
      "cap": "D",
      "small": "d",
      "description": "dog",
      "imgmain":
          "https://media.istockphoto.com/photos/australian-shepherd-sitting-against-white-background-picture-id1154953522?k=20&m=1154953522&s=612x612&w=0&h=YLYsSZkUCWvHZcZtVkSBbC8x3blUHwNVFEwtIpUEejM=",
    },
    {
      "letterkey": "e",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/E1.png",
      "cap": "E",
      "small": "e",
      "description": "egg",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "f",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/F1.png",
      "cap": "F",
      "small": "f",
      "description": "fish",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "g",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/G1.png",
      "cap": "G",
      "small": "g",
      "description": "grapes",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "h",
      "img": "https://alphabetimals.com/wp-content/uploads/H1.png",
      "cap": "H",
      "small": "h",
      "description": "horse",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "i",
      "img": "https://alphabetimals.com/wp-content/uploads/I1.png",
      "cap": "I",
      "small": "i",
      "description": "iron",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "j",
      "img": "https://alphabetimals.com/wp-content/uploads/J4.png",
      "cap": "J",
      "small": "j",
      "description": "joker",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "k",
      "img": "https://alphabetimals.com/wp-content/uploads/K4.png",
      "cap": "K",
      "small": "k",
      "description": "kite",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "l",
      "img": "https://alphabetimals.com/wp-content/uploads/L1.png",
      "cap": "L",
      "small": "l",
      "description": "lemon",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "m",
      "img": "https://alphabetimals.com/wp-content/uploads/M1.png",
      "cap": "M",
      "small": "m",
      "description": "monkey",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "n",
      "img": "https://alphabetimals.com/wp-content/uploads/N3.png",
      "cap": "N",
      "small": "n",
      "description": "nest",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "o",
      "img": "https://alphabetimals.com/wp-content/uploads/O6.png",
      "cap": "O",
      "small": "o",
      "description": "owl",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "p",
      "img": "https://alphabetimals.com/wp-content/uploads/P8.png",
      "cap": "P",
      "small": "p",
      "description": "pen",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "q",
      "img": "https://alphabetimals.com/wp-content/uploads/Q1.png",
      "cap": "Q",
      "small": "q",
      "description": "queen",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "r",
      "img": "https://alphabetimals.com/wp-content/uploads/R3.png",
      "cap": "R",
      "small": "r",
      "description": "rose",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "s",
      "img": "https://alphabetimals.com/wp-content/uploads/S1.png",
      "cap": "S",
      "small": "s",
      "description": "ship",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "t",
      "img": "https://alphabetimals.com/wp-content/uploads/T2.png",
      "cap": "T",
      "small": "t",
      "description": "tiger",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "u",
      "img": "https://alphabetimals.com/wp-content/uploads/U4.png",
      "cap": "U",
      "small": "u",
      "description": "urn",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "v",
      "img": "https://alphabetimals.com/wp-content/uploads/V1.png",
      "cap": "V",
      "small": "v",
      "description": "van",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "w",
      "img": "https://alphabetimals.com/wp-content/uploads/W7.png",
      "cap": "W",
      "small": "w",
      "description": "watch",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "x",
      "img": "https://alphabetimals.com/wp-content/uploads/X4.png",
      "cap": "X",
      "small": "x",
      "description": "xmass",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "y",
      "img": "https://alphabetimals.com/wp-content/uploads/Y1.png",
      "cap": "Y",
      "small": "y",
      "description": "yak",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
    },
    {
      "letterkey": "z",
      "img": "https://alphabetimals.com/wp-content/uploads/Z1.png",
      "cap": "Z",
      "small": "z",
      "description": "zebra",
      "imgmain": "https://alphabetimals.com/wp-content/uploads/V1.png",
      "minidata": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "zebra",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "zoo",
        }
      ]
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
                  // key: data[index]["letterkey"] ?? '',
                  img: data[index]["img"],
                  cap: data[index]["cap"],
                  small: data[index]["small"]),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LetterPage(
                    cap: data[index]["cap"],
                    small: data[index]["small"],
                    description: data[index]["description"],
                    imgLetter: data[index]["imgmain"],
                  );
                }));
              },
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
