import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
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

/* 
class _TextToSpeechState extends State<TextToSpeech> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          child: const Center(child: Text("hello")),
          onDoubleTap: () => speak("helloE"),
          ),
    );
  }
}


 */
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
      "description": "A for Apple",
      "imgmain":
          "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/ant-insect-macro-isolated-on-white-picture-id1156469206?k=20&m=1156469206&s=612x612&w=0&h=lTl8UlOvkYloy7DKEw3FtVvXzQov1okfafKqTNR4GlU=",
          "minidescription": "Ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/airplane-isolated-on-white-background-picture-id986387152?k=20&m=986387152&s=612x612&w=0&h=iLtSGalvZc2bwYSTIRtJyl_1MAWCaqnoBWQEd_eKFeA=",
          "minidescription": "Aeroplane",
        },
        {
          "miniimage":
              "https://static.vecteezy.com/system/resources/previews/002/094/647/non_2x/axe-with-a-wooden-handle-isolated-on-a-white-background-free-photo.jpg",
          "minidescription": "Axe",
        },
        {
          "miniimage":
              "https://static9.depositphotos.com/1594920/1087/i/450/depositphotos_10876113-stock-photo-american-alligator-30-years-alligator.jpg",
          "minidescription": "Alligator",
        },
      ],
    },
    {
      "letterkey": "b",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/B1.png",
      "cap": "B",
      "small": "b",
      "description": "B for Ball",
      "imgmain": "https://m.media-amazon.com/images/I/51IM+jkaEbL._SY355_.jpg",
      "minipage": [
        {
          "miniimage":
              'https://upload.wikimedia.org/wikipedia/commons/c/c7/Vampire_bat_white_background.jpg',
          "minidescription": "Bat",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/happy-little-boy-on-white-background-picture-id467383049?b=1&k=20&m=467383049&s=170667a&w=0&h=AOMXoij2N5zDrJ32NPNLQjQqIQlc8er3pbthxUohVmM=",
          "minidescription": "Boy",
        },
        {
          "miniimage":
              "https://upload.wikimedia.org/wikipedia/commons/a/aa/Bananas_%28white_background%29.jpg",
          "minidescription": "Banana",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/illustration-brown-bear-on-white-picture-id1093559288?k=20&m=1093559288&s=612x612&w=0&h=sn-PAysMno4dwBoy5Hrl5Ye8ZBPEsthqsmoTANQY9vQ=",
          "minidescription": "Bear",
        },
      ],
    },
    {
      "letterkey": "c",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/C2.png",
      "cap": "C",
      "small": "c",
      "description": "C for Cat",
      "imgmain":
          "https://thumbs.dreamstime.com/b/portrait-gray-tabby-cat-white-background-lovely-pet-portrait-gray-tabby-cat-white-background-126243718.jpg",
      "minipage": [
        {
          "miniimage":
              "https://imgd-ct.aeplcdn.com/1056x660/cw/ec/22037/Volkswagen-Polo-Exterior-95634.jpg?v=201711021421&wm=1&q=75",
          "minidescription": "Car",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/jeans-cap-on-a-white-background-picture-id1248213458?k=20&m=1248213458&s=612x612&w=0&h=WBJA6Dmba-XpieAG4Plz2jebpBqKbEubtWUjGpTUfDE=",
          "minidescription": "Cap",
        },
        {
          "miniimage":
              "https://thumbs.dreamstime.com/b/fruit-chocolate-birthday-cake-white-background-fruit-chocolate-birthday-cake-white-background-113735538.jpg",
          "minidescription": "Cake",
        },
        {
          "miniimage":
              "https://t3.ftcdn.net/jpg/01/88/50/62/360_F_188506264_8MMq2BHoDlfoBYHDxiYsYn1KGKbGT38S.jpg",
          "minidescription": "Carrot",
        },
      ],
    },
    {
      "letterkey": "d",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/D1.png",
      "cap": "D",
      "small": "d",
      "description": "D for Dog",
      "imgmain":
          "https://media.istockphoto.com/photos/australian-shepherd-sitting-against-white-background-picture-id1154953522?k=20&m=1154953522&s=612x612&w=0&h=YLYsSZkUCWvHZcZtVkSBbC8x3blUHwNVFEwtIpUEejM=",
      "minipage": [
        {
          "miniimage":
              "https://upload.wikimedia.org/wikipedia/commons/2/2a/Duck-293474_white_background.jpg",
          "minidescription": "Duck",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/whitetail-buck-walking-picture-id1314611064?k=20&m=1314611064&s=612x612&w=0&h=mDrXW7otkQDk7ROYA-MXK03pKRHMCyganDhfHQ2Atyc=",
          "minidescription": "Deer",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-drum-with-drumsticks-3d-rendering-isolated-on-white-background-picture-id869892048?k=20&m=869892048&s=170667a&w=0&h=rUOHadWR5PTnfJC4ob7sp1-cxyuSkTRUOKj5o1RBbW0=",
          "minidescription": "Drum",
        },
        {
          "miniimage":
              "https://i.pinimg.com/736x/26/06/4b/26064b6ef0dd924d3b7b38e312aed05f.jpg",
          "minidescription": "Dolphin",
        },
      ],
    },
    {
      "letterkey": "e",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/E1.png",
      "cap": "E",
      "small": "e",
      "description": "E for Egg",
      "imgmain":
          "https://media.istockphoto.com/photos/isolated-white-egg-in-white-background-picture-id154918169?b=1&k=20&m=154918169&s=170667a&w=0&h=R8qyogNe893VOj_iuDNVEG2CK9JP6CKoji_jGXuq5lE=",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/elefant-with-clipping-path-picture-id94464726?k=20&m=94464726&s=612x612&w=0&h=E4kd3dc_vtxzqLxgyh6v58QfgmF5MgJui_xePlWytlo=",
          "minidescription": "Elephant",
        },
        {
          "miniimage":
              "https://img.freepik.com/free-vector/bald-eagle-flying-attack-hand-draw-white-background_33869-316.jpg?w=2000",
          "minidescription": "Eagle",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/closeup-image-of-side-view-of-brown-eye-and-eyelashes-picture-id157400364?k=20&m=157400364&s=612x612&w=0&h=Dqe4bZ8EgLhdGZfEqFInoOfjn675GmW_Q0y3TC12ePY=",
          "minidescription": "Eye",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/vectors/yellow-envelope-mail-on-white-background-vector-id1220661997?b=1&k=20&m=1220661997&s=170667a&w=0&h=mxIiCMKSHVsovaeb4Cx8dEt-Tuqz7KdLEDUhOFjzl0c=",
          "minidescription": "Envelope",
        },
      ],
    },
    {
      "letterkey": "f",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/F1.png",
      "cap": "F",
      "small": "f",
      "description": "F for Fish",
      "imgmain":
          "https://i.pinimg.com/736x/c8/b2/55/c8b2557b98df7a344b40f24dc9464a19.jpg",
      "minipage": [
        {
          "miniimage":
              "https://img.freepik.com/free-photo/big-purple-flower-isolated-white-background_127675-2223.jpg",
          "minidescription": "Flower",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-fox-four-years-old-walking-white-background-picture-id123036719?k=20&m=123036719&s=612x612&w=0&h=mKHFoo8b437i3PcceHlLlBtCramtR6NCuRslKtsHLmE=",
          "minidescription": "Fox",
        },
        {
          "miniimage":
              "https://t3.ftcdn.net/jpg/02/82/22/38/360_F_282223867_614Zl14w6BgmjNeMZbNn6cNnjrlF28Hy.jpg",
          "minidescription": "Frog",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/electric-fan-picture-id1075325244?k=20&m=1075325244&s=612x612&w=0&h=-dF5UqVM6Is964x2L8rLL7eUNFfP-_NyDB83WoW3Pnc=",
          "minidescription": "Fan",
        },
      ],
    },
    {
      "letterkey": "g",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/G1.png",
      "cap": "G",
      "small": "g",
      "description": "G for Grapes",
      "imgmain":
          "https://media.istockphoto.com/photos/isolated-bunch-of-red-grapes-picture-id1186925401?k=20&m=1186925401&s=612x612&w=0&h=ox1Rlswi6BiRM9wXrtUhMyDOftuFTVclEkiafvBr2Rc=",
      "minipage": [
        {
          "miniimage":
              "https://i.pinimg.com/originals/e2/2f/aa/e22faa57989b9169f08661845e082251.jpg",
          "minidescription": "Giraffe",
        },
        {
          "miniimage":
              "https://c4.wallpaperflare.com/wallpaper/343/502/425/ar-15-4k-nice-desktop-wallpaper-preview.jpg",
          "minidescription": "Gun",
        },
        {
          "miniimage":
              "https://t3.ftcdn.net/jpg/02/85/54/38/360_F_285543843_zbXcrcbZqO0fwvLYzixhOGRjpHAjwCEm.jpg",
          "minidescription": "Goat",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/making-silly-faces-picture-id512404002?k=20&m=512404002&s=612x612&w=0&h=caOGVrQn3WWQtb0c--d_l2FdlGxNDqASU0S0jYDuWWY=",
          "minidescription": "girl",
        },
      ],
    },
    {
      "letterkey": "h",
      "img": "https://alphabetimals.com/wp-content/uploads/H1.png",
      "cap": "H",
      "small": "h",
      "description": "H for Horse",
      "imgmain":
          "https://t4.ftcdn.net/jpg/00/74/05/11/360_F_74051134_CdXrAEOtlq7LcWo9EruXqW11wjy6MeKP.jpg",
      "minipage": [
        {
          "miniimage":
              "https://t4.ftcdn.net/jpg/05/05/66/27/360_F_505662786_qEgJsaVXpJgrI0ifipj3CRg4XMe9pXgd.jpg",
          "minidescription": "Hen",
        },
        {
          "miniimage":
              "https://freerangestock.com/sample/32116/a-hammer-isolated-on-a-white-background.jpg",
          "minidescription": "Hammer",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/house-picture-id171379069?k=20&m=171379069&s=612x612&w=0&h=XjeFrnna5Bj2ifGejf1pcjk1iD4svHWqpklkYyUGfzU=",
          "minidescription": "House",
        },
        {
          "miniimage":
              "https://i.pinimg.com/originals/fe/91/be/fe91bea05325f4db4fb223a94cd77d87.jpg",
          "minidescription": "Hippo",
        },
      ],
    },
    {
      "letterkey": "i",
      "img": "https://alphabetimals.com/wp-content/uploads/I1.png",
      "cap": "I",
      "small": "i",
      "description": "I for Icecream",
      "imgmain":
          "https://i.pinimg.com/736x/60/46/1f/60461f63e4a8960d53c17b40d8dfb41e.jpg",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/igloo-3d-rendering-isolated-on-white-background-picture-id1056477506?b=1&k=20&m=1056477506&s=170667a&w=0&h=nU3qW55PUvXaVm975JcRSjiVn5DdIbccciCGPMIIKzA=",
          "minidescription": "Igloo",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/vectors/isolated-ink-bottle-cartoon-vector-illustration-vector-id861520964?k=20&m=861520964&s=612x612&w=0&h=BVMDPm3wJhoF4iKp7KUwVSuUD9zcT4RXmTZWfPqzbeA=",
          "minidescription": "Inkpot",
        },
        {
          "miniimage":
              "https://thumbs.dreamstime.com/b/three-ice-cubes-white-background-145488211.jpg",
          "minidescription": "Ice",
        },
        {
          "miniimage":
              "https://i.pinimg.com/736x/91/a0/76/91a0763cadee6f5af2fa35fcd7edcec5.jpg",
          "minidescription": "Insects",
        }, 
      ],
    },
    {
      "letterkey": "j",
      "img": "https://alphabetimals.com/wp-content/uploads/J4.png",
      "cap": "J",
      "small": "j",
      "description": "J for Joker",
      "imgmain":
          "https://static9.depositphotos.com/1010535/1214/i/450/depositphotos_12144889-stock-photo-funny-clown-jumping-over-a.jpg",
      "minipage": [
        {
          "miniimage":
              "https://img.wallpapersafari.com/desktop/1440/900/26/97/LbhmSt.jpg",
          "minidescription": "Jeep",
        },
        {
          "miniimage":
              'https://5.imimg.com/data5/CW/WZ/TS/SELLER-5099161/kissan-jam-500x500.jpg',
          "minidescription": "Jam",
        },
        {
          "miniimage":
              "https://www.stockvault.net/data/2019/05/12/265283/preview16.jpg",
          "minidescription": "Jug",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/glass-of-orange-juice-and-fresh-oranges-picture-id152971676?k=20&m=152971676&s=612x612&w=0&h=TtC4yKNcRX3_QIboXJL_RER4QdNv7tKh2vNkkkR7F2U=",
          "minidescription": "Juice",
        },
      ],
    },
    {
      "letterkey": "k",
      "img": "https://alphabetimals.com/wp-content/uploads/K4.png",
      "cap": "K",
      "small": "k",
      "description": "K for Kite",
      "imgmain":
          "https://media.istockphoto.com/vectors/flying-kite-isolated-on-white-vector-vector-id528316969?k=20&m=528316969&s=612x612&w=0&h=pk6k_OdZrWLbelFFX3Ifk998xWDRlJaq2WDwhsWM_70=",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/objects-keys-picture-id184399717?k=20&m=184399717&s=612x612&w=0&h=ZRZgWOJxVFIiskU5Ypg2tbvKxxwG85vCmfP1WCejvKM=",
          "minidescription": "Key",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/kitten-looking-up-picture-id1281700863?k=20&m=1281700863&s=612x612&w=0&h=i2PwEbBJKLsqeJOmHIk759qROXfPPXyb6KoaKjTNrEA=",
          "minidescription": "Kitten",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/young-red-kangaroo-macropus-rufus-picture-id93214279?k=20&m=93214279&s=612x612&w=0&h=3K87nth-duIlgxBLvIbc0sggv18jag7U-Ff8PLxOTY0=",
          "minidescription": "Kangaroo",
        },
        {
          "miniimage":
              "https://static.vecteezy.com/system/resources/previews/002/285/013/original/chef-s-kitchen-knife-icon-isolated-on-white-background-knife-and-chef-kitchen-symbol-butcher-s-design-element-flat-cartoon-icon-illustration-for-logo-poster-emblem-vector.jpg",
          "minidescription": "Knife",
        },
      ],
    },
    {
      "letterkey": "l",
      "img": "https://alphabetimals.com/wp-content/uploads/L1.png",
      "cap": "L",
      "small": "l",
      "description": "L for Lemon",
      "imgmain":
          "https://media.istockphoto.com/photos/delicious-lemon-on-white-picture-id1363074436?k=20&m=1363074436&s=612x612&w=0&h=MexjTqzMlREy6uI4wGOEVviVXrI5ENZsbNpnU-H90Ms=",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/lion-panthera-leo-10-years-old-isolated-on-white-picture-id877369086?k=20&m=877369086&s=612x612&w=0&h=6cXbGL2OzMsR7f8ekRrT9CQ4Y1T4vtQCrsbYyOv74aQ=",
          "minidescription": "Lion",
        },
        {
          "miniimage":
              "https://ds05.infourok.ru/uploads/ex/0f4e/0015ba2d-beb25c1b/hello_html_m345c63a4.jpg",
          "minidescription": "Leaf",
        },
        {
          "miniimage":
              "https://m.media-amazon.com/images/I/71++tajY6oL._SL1500_.jpg",
          "minidescription": "Lillipop",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/table-lamp-picture-id627077732?k=20&m=627077732&s=612x612&w=0&h=VOf5uf3itAIdKDxfKvDLUwRErN8sOaiui7s_wRp-9eE=",
          "minidescription": "lamp",
        },
      ],
    },
    {
      "letterkey": "m",
      "img": "https://alphabetimals.com/wp-content/uploads/M1.png",
      "cap": "M",
      "small": "m",
      "description": "M for Monkey",
      "imgmain":
          "https://i.pinimg.com/originals/ac/23/06/ac23068b6d307728353d82d82977c1b6.jpg",
      "minipage": [
        {
          "miniimage":
              "https://images.unsplash.com/photo-1606118858477-9a8f9dfb257a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2hpdGUlMjBtb3VzZXxlbnwwfHwwfHw%3D&w=1000&q=80",
          "minidescription": "Mouse",
        },
        {
          "miniimage":
              "https://live.staticflickr.com/65535/49107780818_cab57eb33e_b.jpg",
          "minidescription": "Mushroom",
        },
        {
          "miniimage":
              "https://s3.amazonaws.com/freestock-prod/450/freestock_33820597.jpg",
          "minidescription": "Man",
        },
        {
          "miniimage":
              "https://static.vecteezy.com/system/resources/previews/003/626/222/original/moon-coloring-book-for-kids-cheerful-character-illustration-cute-cartoon-style-hand-drawn-fantasy-page-for-children-isolated-on-white-background-vector.jpg",
          "minidescription": "Moon",
        },
      ],
    },
    {
      "letterkey": "n",
      "img": "https://alphabetimals.com/wp-content/uploads/N3.png",
      "cap": "N",
      "small": "n",
      "description": "N for Nest",
      "imgmain":
          "https://mandyevebarnett.files.wordpress.com/2012/10/12463871-empty-straw-nest-with-twigs-and-feathers-on-a-white-background.jpg",
      "minipage": [
        {
          "miniimage":
              'https://img.freepik.com/free-photo/walnut-one-nut-close-up-white-background-isolated_269543-1440.jpg?w=2000',
          "minidescription": "Nut",
        },
        {
          "miniimage":
              'https://ae01.alicdn.com/kf/HTB1o_8dMpXXXXa2apXXq6xXFXXX7/201063919/HTB1o_8dMpXXXXa2apXXq6xXFXXX7.jpg?size=35500&height=800&width=800&hash=f9c5e006770f632e03ffd869b05bc262',
          "minidescription": "Nurse",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/needle-for-sewing-picture-id158429206?k=20&m=158429206&s=612x612&w=0&h=r0LzKznybnxC1XAP6BN978Ab5QU6zjXTXgv9siikKfQ=',
          "minidescription": "Needle",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/fish-net-isolated-on-white-picture-id596346662?k=20&m=596346662&s=612x612&w=0&h=-OpeHDD8eFTkvmuriD0qVYsjwnv5es3pTgtZsdP57uE=',
          "minidescription": "Net",
        },
      ],
    },
    {
      "letterkey": "o",
      "img": "https://alphabetimals.com/wp-content/uploads/O6.png",
      "cap": "O",
      "small": "o",
      "description": "O for Owl",
      "imgmain":
          "https://media.istockphoto.com/photos/great-horned-owl-bubo-virginianus-subarcticus-picture-id108528773?k=20&m=108528773&s=612x612&w=0&h=A6QUm8rMUVgte7qInVg4jE1yGHei3tcxHxwx8qei4kQ=",
      "minipage": [
        {
          "miniimage":
              'https://media.istockphoto.com/photos/orange-picture-id185284489?k=20&m=185284489&s=612x612&w=0&h=LLY2os0YTG2uAzpBKpQZOAC4DGiXBt1jJrltErTJTKI=',
          "minidescription": "Orange",
        },
        {
          "miniimage":
              'https://upload.wikimedia.org/wikipedia/commons/0/07/Struthio_camelus_-_Etosha_2014_%281%29_white_background.jpg',
          "minidescription": "Ostrich",
        },
        {
          "miniimage":
              'https://img.freepik.com/free-photo/purple-onion-white-background_319172-2020.jpg?w=2000',
          "minidescription": "Onion",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/octopus-picture-id867283292?k=20&m=867283292&s=612x612&w=0&h=T0m4BL5NhrextUgyGUVVijpveke-G88BUE1VfJq78os=',
          "minidescription": "Octopus",
        },
      ],
    },
    {
      "letterkey": "p",
      "img": "https://alphabetimals.com/wp-content/uploads/P8.png",
      "cap": "P",
      "small": "p",
      "description": "P for Pen",
      "imgmain":
          "https://media.istockphoto.com/photos/ballpoint-pen-isolated-on-white-background-cutout-picture-id498609933?k=20&m=498609933&s=612x612&w=0&h=1AofVPoqEeWVFD_OxtwgfCCHEI-XD3vcJMtkOdEtJsc=",
      "minipage": [
        {
          "miniimage":
              'https://media.istockphoto.com/photos/parrot-picture-id1171948767?k=20&m=1171948767&s=612x612&w=0&h=WMjjcqVbQgEibxCfwK3Z-DY2iZk0eCaxsDZkbzBp9eo=',
          "minidescription": "Parrot",
        },
        {
          "miniimage":
              'https://img.freepik.com/free-photo/juicy-pineapple-white-background-isolated_96064-298.jpg?w=2000',
          "minidescription": "Pineapple",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/pig-picture-id487646988?k=20&m=487646988&s=612x612&w=0&h=XSfi_LdOJNwuHacFvTgGhWS3xEB1MKPe0NW3jzFN8l4=',
          "minidescription": "Pig",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/emperor-penguin-isolated-on-white-background-with-clipping-path-picture-id1190204868?k=20&m=1190204868&s=170667a&w=0&h=ketMQZaxUpvfkwPVoAJPdSPLRw8DdLUr6mqPLayaA3o=',
          "minidescription": "Penguin",
        },
      ],
    },
    {
      "letterkey": "q",
      "img": "https://alphabetimals.com/wp-content/uploads/Q1.png",
      "cap": "Q",
      "small": "q",
      "description": "Q for Queen",
      "imgmain":
          "https://render.fineartamerica.com/images/rendered/default/flat/round-beach-towel/images/artworkimages/medium/3/queen-elizabeth-ii-carmen-polidano.jpg?&targetx=-2&targety=-16&imagewidth=788&imageheight=816&modelwidth=788&modelheight=788&backgroundcolor=070101&orientation=0",
      "minipage": [
        {
          "miniimage":
              'https://t4.ftcdn.net/jpg/04/10/11/83/360_F_410118346_9GirsRS1fbqL59S0jLIm3rGEtuGzGWHF.jpg',
          "minidescription": "Quill",
        },
        {
          "miniimage":
              'https://img.freepik.com/free-photo/japanese-quail-front-white-background_87557-17336.jpg',
          "minidescription": "Quail",
        },
        {
          "miniimage": 'https://m.media-amazon.com/images/I/51aLhfaZFiL.jpg',
          "minidescription": "Quilt",
        },
        {
          "miniimage":
              "https://africa-images.com/public/photos/N/U/NUTh8DtMjORAJvvn04hwUOz4O/NUTh8DtMjORAJvvn04hwUOz4O_smaller.jpg",
          "minidescription": "Queue",
        },
      ],
    },
    {
      "letterkey": "r",
      "img": "https://alphabetimals.com/wp-content/uploads/R3.png",
      "cap": "R",
      "small": "r",
      "description": "R for Rose",
      "imgmain":
          "https://media.istockphoto.com/photos/red-rose-on-isolated-background-picture-id467525870?k=20&m=467525870&s=612x612&w=0&h=qN380pxbOdpSHrY7O19S7wpy2_lO1CIvJmt5nAlsFX4=",
      "minipage": [
        {
          "miniimage":
              'https://img.freepik.com/free-photo/side-view-red-brown-cute-rabbit-isolated-white-background_112781-114.jpg?w=2000',
          "minidescription": "Rabbit",
        },
        {
          "miniimage":
              'https://t4.ftcdn.net/jpg/02/84/04/53/360_F_284045316_A5SHVJQo4igIMLZP5otcawGdOesJM8IM.jpg',
          "minidescription": "Rhino",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/gold-wedding-ringson-white-picture-id869682500?k=20&m=869682500&s=612x612&w=0&h=OGW1h48GDPkH-rOzz3HWeWe8N1NrtztjO9i8RArv9dE=',
          "minidescription": "Ring",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/space-rocket-isolated-on-white-background-picture-id852721936?k=20&m=852721936&s=170667a&w=0&h=AbkeXO1B_884D6jL7J_b12PdpMJRG--KcA2s1PBSRqQ=',
          "minidescription": "Rocket",
        },
      ],
    },
    {
      "letterkey": "s",
      "img": "https://alphabetimals.com/wp-content/uploads/S1.png",
      "cap": "S",
      "small": "s",
      "description": "S for Spider",
      "imgmain":
          'https://media.istockphoto.com/photos/wasp-spider-viewed-from-up-high-argiope-bruennichi-isolated-on-white-picture-id889610028?k=20&m=889610028&s=612x612&w=0&h=E254N4GLBjhSjqN6Hu85xC6ppPHLZg94OqAzPQWDufQ=',
      "minipage": [
        {
          "miniimage":
              'https://static.vecteezy.com/system/resources/thumbnails/000/797/231/small_2x/athletic-shoes-men-s-sneakers-on-a-white-background.jpg',
          "minidescription": "Shoe",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/old-silver-spoon-picture-id519939025?k=20&m=519939025&s=612x612&w=0&h=iO_73JuSBxpmd4ycWcXio4W0KdShLBNp76l5URVt454=',
          "minidescription": "Spoon",
        },
        {
          "miniimage":
              'https://img.freepik.com/free-photo/soap-bar-isolated-white-background-close-up_93675-134651.jpg?w=2000',
          "minidescription": "Soap",
        },
        {
          "miniimage":
              "https://t3.ftcdn.net/jpg/01/25/62/04/360_F_125620432_V4ROqppGV0VmBdDVXi2vZpo1D0nvJ94e.jpg",
          "minidescription": "Ship",
        },
      ],
    },
    {
      "letterkey": "t",
      "img": "https://alphabetimals.com/wp-content/uploads/T2.png",
      "cap": "T",
      "small": "t",
      "description": "T for Tomato",
      "imgmain":
          'https://t4.ftcdn.net/jpg/00/29/78/85/360_F_29788505_PbGEDPBhQIxW2soJMOpLlYOybLrvPt2e.jpg',
      "minipage": [
        {
          "miniimage":
              "https://img.freepik.com/free-photo/tiger-lying-down-cleaning-its-paw-isolated-white_191971-26176.jpg?w=2000",
          "minidescription": "Tiger",
        },
        {
          "miniimage":
              "https://t3.ftcdn.net/jpg/00/07/00/92/360_F_7009270_8E6cMwLpnLQiD31xaxPqk5ev8gwnlcmk.jpg",
          "minidescription": "Turtle",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/modern-high-speed-train-isolated-on-white-picture-id614648698?k=20&m=614648698&s=612x612&w=0&h=34plRdW56zcVN9ipKJUzJEA5rtFOMW81E-SKOFSVP_M=',
          "minidescription": "Train",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/coffee-table-isolated-on-white-background-with-clipping-path-included-picture-id1250026682?k=20&m=1250026682&s=612x612&w=0&h=-TB7xWAUa4LUnsq1kyVIUmlzwm2WWa_1JWj7proQaRw=',
          "minidescription": "Table",
        },
      ],
    },
    {
      "letterkey": "u",
      "img": "https://alphabetimals.com/wp-content/uploads/U4.png",
      "cap": "U",
      "small": "u",
      "description": "urn",
      "imgmain":
          "https://i.pinimg.com/originals/17/44/48/1744487e001fb00b662343e66d6f6c9c.jpg",
      "minipage": [
        {
          "miniimage":
              'https://media.istockphoto.com/photos/blue-umbrella-wclipping-path-picture-id157440095?k=20&m=157440095&s=612x612&w=0&h=-VkExBS4i93ttqp8b1Ra_mQyrwXDwX8NC_HjEuIfxx8=',
          "minidescription": "Umbrella",
        },
        {
          "miniimage":
              'https://africa-images.com/public/photos/6/A/6AM7NTBK99KzzmF5kjtOfpAff/6AM7NTBK99KzzmF5kjtOfpAff_smaller.jpg',
          "minidescription": "Uniform",
        },
        {
          "miniimage":
              'https://i.pinimg.com/736x/28/2e/a0/282ea0aeffa00207c6f75a4786fb51c1.jpg',
          "minidescription": "Unicorn",
        },
        {
          "miniimage":
              'https://img.freepik.com/free-vector/circus-unicycle-bike-isolated-white-background-design-elements-vector-illustration_201926-1550.jpg?w=2000',
          "minidescription": "Unicycle",
        },
      ],
    },
    {
      "letterkey": "v",
      "img": "https://alphabetimals.com/wp-content/uploads/V1.png",
      "cap": "V",
      "small": "v",
      "description": "V for Van",
      "imgmain":
          "https://t4.ftcdn.net/jpg/00/78/35/99/360_F_78359966_df0fomf8xX25H2M00YFthQqpMdJQgpQ9.jpg",
      "minipage": [
        {
          "miniimage":
              'https://t3.ftcdn.net/jpg/01/98/17/82/360_F_198178225_WEVyvRaweIbXZRDRnZ0wWikmkjVSOxIk.jpg',
          "minidescription": "Viollin",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/vectors/safety-vest-set-vector-id1307144645?k=20&m=1307144645&s=612x612&w=0&h=rpes9ykq8eaD1IBdM5iT1309dSPr0hUEp1fFqgiNOR8=',
          "minidescription": "Vest",
        },
        {
          "miniimage":
              'https://i.pinimg.com/736x/9e/14/5b/9e145ba1a3f22c3f858bd6e7ba478faf.jpg',
          "minidescription": "Vulture",
        },
        {
          "miniimage":
              'https://t4.ftcdn.net/jpg/02/08/87/81/360_F_208878179_XWGL0wPpp9lRLRja9fITNwMAHYzTwlUK.jpg',
          "minidescription": "Vegetables",
        },
      ],
    },
    {
      "letterkey": "w",
      "img": "https://alphabetimals.com/wp-content/uploads/W7.png",
      "cap": "W",
      "small": "w",
      "description": "W for Watch",
      "imgmain":
          "https://t4.ftcdn.net/jpg/03/02/10/41/360_F_302104122_icLufAvgt2ZsR3QP5PG4DhRfwEvWHFWq.jpg",
      "minipage": [
        {
          "miniimage":
              'https://img.freepik.com/free-vector/blue-whale-isolated-white-background-watercolor-illustration-template-closeup_119039-227.jpg',
          "minidescription": "Whale",
        },
        {
          "miniimage":
              'https://img.freepik.com/free-photo/watermelon-fruit-with-cut-piece-isolated-white-background_285124-2.jpg',
          "minidescription": "Watermelon",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/white-plastic-window-picture-id121592183?k=20&m=121592183&s=612x612&w=0&h=KtV7ueWyCbcoZSMAdUIJvnq_zVT3ok9nd3HJLj2sBQ8=',
          "minidescription": "Window",
        },
        {
          "miniimage":
              'https://img.freepik.com/free-photo/whistle-cards-white-background-isolated-3d-illustration_356060-3002.jpg',
          "minidescription": "Wistle",
        },
      ],
    },
    {
      "letterkey": "x",
      "img": "https://alphabetimals.com/wp-content/uploads/X4.png",
      "cap": "X",
      "small": "x",
      "description": "X for Xylophone",
      "imgmain":
          "https://media.istockphoto.com/photos/xylophone-picture-id523395087?k=20&m=523395087&s=612x612&w=0&h=G9sfGpIBwvF_Vnt4YlsqZF57Z4xdO9Lm8MMewqgaW1I=",
      "minipage": [
        {
          "miniimage":
              'https://static.vecteezy.com/system/resources/previews/005/016/762/original/illustration-of-a-snapshot-of-the-lungs-x-ray-of-the-lungs-isolated-on-a-white-background-vector.jpg',
          "minidescription": "Xray",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/decorated-christmas-tree-isolated-on-white-picture-id1170077413?k=20&m=1170077413&s=612x612&w=0&h=v0UHZpHRwxS1BEHgUFdUNl8qiX_AR7TCKxjVY_F-CSI=',
          "minidescription": "Xmas tree",
        },
        {
          "miniimage":
              "https://static.vecteezy.com/system/resources/previews/003/544/438/non_2x/merry-christmas-text-logo-with-santa-claus-and-friends-free-vector.jpg",
          "minidescription": "Xmas",
        },
        {
          "miniimage":
              'https://us.123rf.com/450wm/zosimus/zosimus1903/zosimus190300039/119646450-illustration-of-an-indian-glassy-fish-paranoid-ranga-with-a-white-background-.jpg?ver=6',
          "minidescription": "Xray Fish",
        },
      ],
    },
    {
      "letterkey": "y",
      "img": "https://alphabetimals.com/wp-content/uploads/Y1.png",
      "cap": "Y",
      "small": "y",
      "description": "Y for Yak",
      "imgmain":
          "https://img.freepik.com/free-photo/yak-white-isolated_191971-10926.jpg?w=2000",
      "minipage": [
        {
          "miniimage":
              'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/luxury-yacht-isolated-on-white-background-goce-risteski.jpg',
          "minidescription": "Yatch",
        },
        {
          "miniimage": 'https://vistapointe.net/images/yoyo-2.jpg',
          "minidescription": "Yo-Yo",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/young-woman-exercising-yoga-on-a-mat-picture-id1206713929?k=20&m=1206713929&s=612x612&w=0&h=LAdguzh6Co0cVbWe3K7GyUaXiJscwphip8DN1Yqp2Po=',
          "minidescription": "Yoga",
        },
        {
          "miniimage":
              'https://media.istockphoto.com/photos/clew-of-green-thread-for-knitting-isolated-on-white-background-picture-id918294950?k=20&m=918294950&s=612x612&w=0&h=N3DMsuX7Tnrw_jetiJUpWY9GvjVDvI_xr7l1Rne1kl4=',
          "minidescription": "Yarn",
        },
      ],
    },
    {
      "letterkey": "z",
      "img": "https://alphabetimals.com/wp-content/uploads/Z1.png",
      "cap": "Z",
      "small": "z",
      "description": "Z for Zebra",
      "imgmain":
          "https://media.istockphoto.com/photos/plain-burchells-zebra-female-standing-side-view-on-white-picture-id176835517?k=20&m=176835517&s=612x612&w=0&h=IOCRqrobNsTtaQC_UsLWWVb5AfWwyy2SVWXyYiPRfLc=",
      "minipage": [
        {
          "miniimage":
              'https://img.freepik.com/free-vector/clothes-golden-zip-set-white-background-vector-illustration_269504-1223.jpg?w=2000',
          "minidescription": "Zip",
        },
        {
          "miniimage":
              'https://img.freepik.com/free-vector/illustration-collection-zoo-animals-white-background_29190-3186.jpg',
          "minidescription": "Zoo",
        },
        {
          "miniimage":
              'http://www.mikewallteacher.com/wp-content/uploads/2016/08/zig-zag.jpg',
          "minidescription": "Zigzag",
        },
        {
          "miniimage":
              'https://5.imimg.com/data5/FB/SX/MY-11406557/pedestrian-crossing-sign-board-500x500.jpg',
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
