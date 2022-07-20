import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:learn/pages/main_drawer.dart';
import 'package:learn/widgets/alphablock.dart';
import 'package:learn/pages/letterpage.dart';

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
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  final listSize = 26;
  List<Map<String, dynamic>> data = [
    {
      "letterkey": "a",
      "img": "assets/alphaChar/A.png",
      "cap": "A",
      "small": "a",
      "description": "A for Apple",
      "imgmain": "assets/charecters/Apple.jpg",
      "minipage": [
        {
          "miniimage": 'assets/charecters/ant.jpg',
          "minidescription": "Ant",
        },
        {
          "miniimage": 'assets/charecters/aeroplane.jpg',
          "minidescription": "Aeroplane",
        },
        {
          "miniimage": 'assets/charecters/axe.jpg',
          "minidescription": "Axe",
        },
        {
          "miniimage": 'assets/charecters/alligator.jpg',
          "minidescription": "Alligator",
        },
      ],
    },
    {
      "letterkey": "b",
      "img": "assets/alphaChar/B.png",
      "cap": "B",
      "small": "b",
      "description": "B for Ball",
      "imgmain": 'assets/charecters/ball.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/bat.jpg',
          "minidescription": "Bat",
        },
        {
          "miniimage": 'assets/charecters/boy.jpg',
          "minidescription": "Boy",
        },
        {
          "miniimage": 'assets/charecters/banana.jpg',
          "minidescription": "Banana",
        },
        {
          "miniimage": 'assets/charecters/bear.jpg',
          "minidescription": "Bear",
        },
      ],
    },
    {
      "letterkey": "c",
      "img": "assets/alphaChar/C.png",
      "cap": "C",
      "small": "c",
      "description": "C for Cat",
      "imgmain": 'assets/charecters/cat.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/car.jpg',
          "minidescription": "Car",
        },
        {
          "miniimage": 'assets/charecters/cap.jpg',
          "minidescription": "Cap",
        },
        {
          "miniimage": 'assets/charecters/cake.jpg',
          "minidescription": "Cake",
        },
        {
          "miniimage": 'assets/charecters/carrot.jpg',
          "minidescription": "Carrot",
        },
      ],
    },
    {
      "letterkey": "d",
      "img": "assets/alphaChar/D.png",
      "cap": "D",
      "small": "d",
      "description": "D for Dog",
      "imgmain": 'assets/charecters/dog.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/duck.jpg',
          "minidescription": "Duck",
        },
        {
          "miniimage": 'assets/charecters/deer.jpg',
          "minidescription": "Deer",
        },
        {
          "miniimage": 'assets/charecters/drum.jpg',
          "minidescription": "Drum",
        },
        {
          "miniimage": 'assets/charecters/dolphin.jpg',
          "minidescription": "Dolphin",
        },
      ],
    },
    {
      "letterkey": "e",
      "img": "assets/alphaChar/E.png",
      "cap": "E",
      "small": "e",
      "description": "E for egg",
      "imgmain": 'assets/charecters/egg.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/elephant.jpg',
          "minidescription": "Elephant",
        },
        {
          "miniimage": 'assets/charecters/eagle.jpg',
          "minidescription": "Eagle",
        },
        {
          "miniimage": 'assets/charecters/eye.jpg',
          "minidescription": "Eye",
        },
        {
          "miniimage": 'assets/charecters/envelope.jpg',
          "minidescription": "Envelope",
        },
      ],
    },
    {
      "letterkey": "f",
      "img": "assets/alphaChar/F.png",
      "cap": "F",
      "small": "f",
      "description": "F for Fish",
      "imgmain": 'assets/charecters/fish.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/flower.jpg',
          "minidescription": "Flower",
        },
        {
          "miniimage": 'assets/charecters/fox.jpg',
          "minidescription": "Fox",
        },
        {
          "miniimage": 'assets/charecters/frog.jpg',
          "minidescription": "Frog",
        },
        {
          "miniimage": 'assets/charecters/fan.jpg',
          "minidescription": "Fan",
        },
      ],
    },
    {
      "letterkey": "g",
      "img": "assets/alphaChar/G.png",
      "cap": "G",
      "small": "g",
      "description": "G for Grapes",
      "imgmain": 'assets/charecters/grapes.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/giraffe.jpg',
          "minidescription": "Giraffe",
        },
        {
          "miniimage": 'assets/charecters/gun.jpg',
          "minidescription": "Gun",
        },
        {
          "miniimage": 'assets/charecters/goat.jpg',
          "minidescription": "Goat",
        },
        {
          "miniimage": 'assets/charecters/girl.jpg',
          "minidescription": "Girl",
        },
      ],
    },
    {
      "letterkey": "h",
      "img": "assets/alphaChar/H.png",
      "cap": "H",
      "small": "h",
      "description": "H for Horse",
      "imgmain": 'assets/charecters/horse.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/hen.jpg',
          "minidescription": "Hen",
        },
        {
          "miniimage": 'assets/charecters/hammer.jpg',
          "minidescription": "Hammer",
        },
        {
          "miniimage": 'assets/charecters/house.jpg',
          "minidescription": "House",
        },
        {
          "miniimage": 'assets/charecters/hippo.jpg',
          "minidescription": "Hippo",
        },
      ],
    },
    {
      "letterkey": "i",
      "img": "assets/alphaChar/I.png",
      "cap": "I",
      "small": "i",
      "description": "I for Icecream",
      "imgmain": 'assets/charecters/icecream.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/igloo.jpg',
          "minidescription": "Igloo",
        },
        {
          "miniimage": 'assets/charecters/inkpot.jpg',
          "minidescription": "Inkpot",
        },
        {
          "miniimage": 'assets/charecters/ice.jpg',
          "minidescription": "Ice",
        },
        {
          "miniimage": 'assets/charecters/insects.jpg',
          "minidescription": "Insects",
        },
      ],
    },
    {
      "letterkey": "j",
      "img": "assets/alphaChar/J.png",
      "cap": "J",
      "small": "j",
      "description": "J for Joker",
      "imgmain": 'assets/charecters/joker.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/jeep.jpg',
          "minidescription": "Jeep",
        },
        {
          "miniimage": 'assets/charecters/jam.jpg',
          "minidescription": "Jam",
        },
        {
          "miniimage": 'assets/charecters/jug.jpg',
          "minidescription": "Jug",
        },
        {
          "miniimage": 'assets/charecters/juice.jpg',
          "minidescription": "Juice",
        },
      ],
    },
    {
      "letterkey": "k",
      "img": "assets/alphaChar/K.png",
      "cap": "K",
      "small": "k",
      "description": "K for Kite",
      "imgmain": 'assets/charecters/kite.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/key.jpg',
          "minidescription": "Key",
        },
        {
          "miniimage": 'assets/charecters/kitten.jpg',
          "minidescription": "Kitten",
        },
        {
          "miniimage": 'assets/charecters/kangaroo.jpg',
          "minidescription": "Kangaroo",
        },
        {
          "miniimage": 'assets/charecters/knife.jpg',
          "minidescription": "Knife",
        },
      ],
    },
    {
      "letterkey": "l",
      "img": "assets/alphaChar/L.png",
      "cap": "L",
      "small": "l",
      "description": "L for Lemon",
      "imgmain": 'assets/charecters/lemon.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/lion.jpg',
          "minidescription": "Lion",
        },
        {
          "miniimage": 'assets/charecters/leaf.jpg',
          "minidescription": "Leaf",
        },
        {
          "miniimage": 'assets/charecters/lollipop.jpg',
          "minidescription": "Lollipop",
        },
        {
          "miniimage": 'assets/charecters/lamp.jpg',
          "minidescription": "Lamp",
        },
      ],
    },
    {
      "letterkey": "m",
      "img": "assets/alphaChar/M.png",
      "cap": "M",
      "small": "m",
      "description": "M for Monkey",
      "imgmain": 'assets/charecters/monkey.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/mouse.jpeg',
          "minidescription": "Mouse",
        },
        {
          "miniimage": 'assets/charecters/mushroom.jpg',
          "minidescription": "Mushroom",
        },
        {
          "miniimage": 'assets/charecters/man.jpg',
          "minidescription": "Man",
        },
        {
          "miniimage": 'assets/charecters/moon.jpg',
          "minidescription": "Moon",
        },
      ],
    },
    {
      "letterkey": "n",
      "img": "assets/alphaChar/N.png",
      "cap": "N",
      "small": "n",
      "description": "N for Nest",
      "imgmain": 'assets/charecters/nest.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/nut.jpg',
          "minidescription": "Nut",
        },
        {
          "miniimage": 'assets/charecters/nurse.jpg',
          "minidescription": "Nurse",
        },
        {
          "miniimage": 'assets/charecters/needle.jpg',
          "minidescription": "Needle",
        },
        {
          "miniimage": 'assets/charecters/net.jpg',
          "minidescription": "Net",
        },
      ],
    },
    {
      "letterkey": "o",
      "img": "assets/alphaChar/O.png",
      "cap": "O",
      "small": "o",
      "description": "O for Owl",
      "imgmain": 'assets/charecters/owl.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/Apple.jpg',
          "minidescription": "Orange",
        },
        {
          "miniimage": 'assets/charecters/ostrich.jpg',
          "minidescription": "Ostrich",
        },
        {
          "miniimage": 'assets/charecters/onion.jpg',
          "minidescription": "Onion",
        },
        {
          "miniimage": 'assets/charecters/octopus.jpg',
          "minidescription": "Octopus",
        },
      ],
    },
    {
      "letterkey": "p",
      "img": "assets/alphaChar/P.png",
      "cap": "P",
      "small": "p",
      "description": "P for Pen",
      "imgmain": 'assets/charecters/pen.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/parrot.jpg',
          "minidescription": "Parrot",
        },
        {
          "miniimage": 'assets/charecters/pineapple.jpg',
          "minidescription": "Pineapple",
        },
        {
          "miniimage": 'assets/charecters/pig.jpg',
          "minidescription": "Pig",
        },
        {
          "miniimage": 'assets/charecters/penguinjpg.jpeg',
          "minidescription": "Penguin",
        },
      ],
    },
    {
      "letterkey": "q",
      "img": "assets/alphaChar/Q.png",
      "cap": "Q",
      "small": "q",
      "description": "Q for Queen",
      "imgmain": 'assets/charecters/queen.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/quill.jpg',
          "minidescription": "Quill",
        },
        {
          "miniimage": 'assets/charecters/quail.jpg',
          "minidescription": "Quail",
        },
        {
          "miniimage": 'assets/charecters/quilt.jpg',
          "minidescription": "Quilt",
        },
        {
          "miniimage": 'assets/charecters/queue.jpg',
          "minidescription": "Queue",
        },
      ],
    },
    {
      "letterkey": "r",
      "img": "assets/alphaChar/R.png",
      "cap": "R",
      "small": "r",
      "description": "R for Rose",
      "imgmain": 'assets/charecters/rose.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/rabbit.jpg',
          "minidescription": "Rabbit",
        },
        {
          "miniimage": 'assets/charecters/rhino.jpg',
          "minidescription": "Rhino",
        },
        {
          "miniimage": 'assets/charecters/ring.jpg',
          "minidescription": "Ring",
        },
        {
          "miniimage": 'assets/charecters/rocket.jpg',
          "minidescription": "Rocket",
        },
      ],
    },
    {
      "letterkey": "s",
      "img": "assets/alphaChar/S.png",
      "cap": "S",
      "small": "s",
      "description": "S for Spider",
      "imgmain": 'assets/charecters/spider.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/shoe.jpg',
          "minidescription": "Shoe",
        },
        {
          "miniimage": 'assets/charecters/spoon.jpg',
          "minidescription": "Spoon",
        },
        {
          "miniimage": 'assets/charecters/soap.jpg',
          "minidescription": "Soap",
        },
        {
          "miniimage": 'assets/charecters/ship.jpg',
          "minidescription": "Ship",
        },
      ],
    },
    {
      "letterkey": "t",
      "img": "assets/alphaChar/T.png",
      "cap": "T",
      "small": "t",
      "description": "T for Tomato",
      "imgmain": 'assets/charecters/tomato.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/tiger.jpg',
          "minidescription": "Tiger",
        },
        {
          "miniimage": 'assets/charecters/turtle.jpg',
          "minidescription": "Turtle",
        },
        {
          "miniimage": 'assets/charecters/train.jpg',
          "minidescription": "Train",
        },
        {
          "miniimage": 'assets/charecters/table.jpg',
          "minidescription": "Table",
        },
      ],
    },
    {
      "letterkey": "u",
      "img": "assets/alphaChar/U.png",
      "cap": "U",
      "small": "u",
      "description": "urn",
      "imgmain": 'assets/charecters/urn.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/umbrella.jpg',
          "minidescription": "Umbrella",
        },
        {
          "miniimage": 'assets/charecters/uniform.jpg',
          "minidescription": "Uniform",
        },
        {
          "miniimage": 'assets/charecters/unicorn.jpg',
          "minidescription": "Unicorn",
        },
        {
          "miniimage": 'assets/charecters/unicycle.jpg',
          "minidescription": "Unicycle",
        },
      ],
    },
    {
      "letterkey": "v",
      "img": "assets/alphaChar/V.png",
      "cap": "V",
      "small": "v",
      "description": "V for Van",
      "imgmain": 'assets/charecters/van.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/violine.jpg',
          "minidescription": "Violin",
        },
        {
          "miniimage": 'assets/charecters/vest.jpg',
          "minidescription": "Vest",
        },
        {
          "miniimage": 'assets/charecters/vulture.jpg',
          "minidescription": "Vulture",
        },
        {
          "miniimage": 'assets/charecters/vegetable.jpg',
          "minidescription": "Vegetables",
        },
      ],
    },
    {
      "letterkey": "w",
      "img": "assets/alphaChar/W.png",
      "cap": "W",
      "small": "w",
      "description": "W for Watch",
      "imgmain": 'assets/charecters/watch.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/whale.jpg',
          "minidescription": "Whale",
        },
        {
          "miniimage": 'assets/charecters/watermelon.jpg',
          "minidescription": "Watermelon",
        },
        {
          "miniimage": 'assets/charecters/window.jpg',
          "minidescription": "Window",
        },
        {
          "miniimage": 'assets/charecters/whistle.jpg',
          "minidescription": "Whistle",
        },
      ],
    },
    {
      "letterkey": "x",
      "img": "assets/alphaChar/X.png".toString(),
      "cap": "X",
      "small": "x",
      "description": "X for Xylophone",
      "imgmain": 'assets/charecters/xylophone.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/xray.jpg',
          "minidescription": "Xray",
        },
        {
          "miniimage": 'assets/charecters/xmastree.jpg',
          "minidescription": "Xmas tree",
        },
        {
          "miniimage": 'assets/charecters/xmas.jpg',
          "minidescription": "Xmas",
        },
        {
          "miniimage": 'assets/charecters/xray fish.jpg',
          "minidescription": "Xray Fish",
        },
      ],
    },
    {
      "letterkey": "y",
      "img": "assets/alphaChar/Y.png".toString(),
      "cap": "Y",
      "small": "y",
      "description": "Y for Yak",
      "imgmain": 'assets/charecters/yak.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/yatch.jpg',
          "minidescription": "Yatch",
        },
        {
          "miniimage": 'assets/charecters/yoyo.jpg',
          "minidescription": "Yo-Yo",
        },
        {
          "miniimage": 'assets/charecters/yoga.jpg',
          "minidescription": "Yoga",
        },
        {
          "miniimage": 'assets/charecters/yarn.jpg',
          "minidescription": "Yarn",
        },
      ],
    },
    {
      "letterkey": "z",
      "img": "assets/alphaChar/Z.png".toString(),
      "cap": "Z",
      "small": "z",
      "description": "Z for Zebra",
      "imgmain": 'assets/charecters/zebra.jpg',
      "minipage": [
        {
          "miniimage": 'assets/charecters/zip.jpg',
          "minidescription": "Zip",
        },
        {
          "miniimage": 'assets/charecters/zoo.jpg',
          "minidescription": "Zoo",
        },
        {
          "miniimage": 'assets/charecters/zigzag.jpg',
          "minidescription": "Zigzag",
        },
        {
          "miniimage": 'assets/charecters/zebracrossing.jpg',
          "minidescription": "Zebra Crossing",
        },
      ],
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
        drawer: const MainDrawer(),
        body: Wrap(
          spacing: 3,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          children: List.generate(listSize, (index) {
            return InkWell(
              onTap: () => speak(data[index]["cap"]),
              child: AlphaBlock(
                  // key: data[index]["letterkey"] ?? '',
                  img: data[index]["img"],
                  cap: data[index]["cap"],
                  small: data[index]["small"]),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LetterPage(
                    cap: data[index]["cap"],
                    small: data[index]["small"],
                    description: data[index]["description"],
                    imgLetter: data[index]["imgmain"],
                    minipage: data[index]["minipage"],
                  );
                }));
              },
            );
          }),
        ));
  }
}
