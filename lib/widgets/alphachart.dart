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
              "https://nkyhealth.org/wp-content/uploads/2019/06/Bat-flying.jpg",
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
              "https://thumbs.dreamstime.com/b/jar-strawberry-jam-white-background-preserved-fruits-35416936.jpg",
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
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "Needle",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "Net",
        },
      ],
    },
    {
      "letterkey": "o",
      "img": "https://alphabetimals.com/wp-content/uploads/O6.png",
      "cap": "O",
      "small": "o",
      "description": "owl",
      "imgmain":
          "https://media.istockphoto.com/photos/great-horned-owl-bubo-virginianus-subarcticus-picture-id108528773?k=20&m=108528773&s=612x612&w=0&h=A6QUm8rMUVgte7qInVg4jE1yGHei3tcxHxwx8qei4kQ=",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "p",
      "img": "https://alphabetimals.com/wp-content/uploads/P8.png",
      "cap": "P",
      "small": "p",
      "description": "pen",
      "imgmain":
          "https://media.istockphoto.com/photos/ballpoint-pen-isolated-on-white-background-cutout-picture-id498609933?k=20&m=498609933&s=612x612&w=0&h=1AofVPoqEeWVFD_OxtwgfCCHEI-XD3vcJMtkOdEtJsc=",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "q",
      "img": "https://alphabetimals.com/wp-content/uploads/Q1.png",
      "cap": "Q",
      "small": "q",
      "description": "queen",
      "imgmain":
          "https://render.fineartamerica.com/images/rendered/default/flat/round-beach-towel/images/artworkimages/medium/3/queen-elizabeth-ii-carmen-polidano.jpg?&targetx=-2&targety=-16&imagewidth=788&imageheight=816&modelwidth=788&modelheight=788&backgroundcolor=070101&orientation=0",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "r",
      "img": "https://alphabetimals.com/wp-content/uploads/R3.png",
      "cap": "R",
      "small": "r",
      "description": "rose",
      "imgmain":
          "https://media.istockphoto.com/photos/red-rose-on-isolated-background-picture-id467525870?k=20&m=467525870&s=612x612&w=0&h=qN380pxbOdpSHrY7O19S7wpy2_lO1CIvJmt5nAlsFX4=",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "s",
      "img": "https://alphabetimals.com/wp-content/uploads/S1.png",
      "cap": "S",
      "small": "s",
      "description": "ship",
      "imgmain":
          "https://t3.ftcdn.net/jpg/01/25/62/04/360_F_125620432_V4ROqppGV0VmBdDVXi2vZpo1D0nvJ94e.jpg",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "t",
      "img": "https://alphabetimals.com/wp-content/uploads/T2.png",
      "cap": "T",
      "small": "t",
      "description": "tiger",
      "imgmain":
          "https://img.freepik.com/free-photo/tiger-lying-down-cleaning-its-paw-isolated-white_191971-26176.jpg?w=2000",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
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
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "v",
      "img": "https://alphabetimals.com/wp-content/uploads/V1.png",
      "cap": "V",
      "small": "v",
      "description": "van",
      "imgmain":
          "https://t4.ftcdn.net/jpg/00/78/35/99/360_F_78359966_df0fomf8xX25H2M00YFthQqpMdJQgpQ9.jpg",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "w",
      "img": "https://alphabetimals.com/wp-content/uploads/W7.png",
      "cap": "W",
      "small": "w",
      "description": "watch",
      "imgmain":
          "https://t4.ftcdn.net/jpg/03/02/10/41/360_F_302104122_icLufAvgt2ZsR3QP5PG4DhRfwEvWHFWq.jpg",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "x",
      "img": "https://alphabetimals.com/wp-content/uploads/X4.png",
      "cap": "X",
      "small": "x",
      "description": "xylophone",
      "imgmain":
          "https://media.istockphoto.com/photos/xylophone-picture-id523395087?k=20&m=523395087&s=612x612&w=0&h=G9sfGpIBwvF_Vnt4YlsqZF57Z4xdO9Lm8MMewqgaW1I=",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "y",
      "img": "https://alphabetimals.com/wp-content/uploads/Y1.png",
      "cap": "Y",
      "small": "y",
      "description": "yak",
      "imgmain":
          "https://img.freepik.com/free-photo/yak-white-isolated_191971-10926.jpg?w=2000",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "apple",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "ant",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "axe",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "aeroplane",
        },
      ],
    },
    {
      "letterkey": "z",
      "img": "https://alphabetimals.com/wp-content/uploads/Z1.png",
      "cap": "Z",
      "small": "z",
      "description": "zebra",
      "imgmain":
          "https://media.istockphoto.com/photos/plain-burchells-zebra-female-standing-side-view-on-white-picture-id176835517?k=20&m=176835517&s=612x612&w=0&h=IOCRqrobNsTtaQC_UsLWWVb5AfWwyy2SVWXyYiPRfLc=",
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "zebra",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "zoo w1",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "zebra",
        },
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "zoo w1",
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
