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
      "minipage": [
        {
          "miniimage":
              "https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=20&m=683494078&s=612x612&w=0&h=MtHUc7vTTZGAAP4-o87T6v57g1KaJP5Vd_oh7LwQca8=",
          "minidescription": "sample",
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
      "letterkey": "b",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/B1.png",
      "cap": "B",
      "small": "b",
      "description": "ball",
      "imgmain": "https://m.media-amazon.com/images/I/51IM+jkaEbL._SY355_.jpg",
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
      "letterkey": "c",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/C2.png",
      "cap": "C",
      "small": "c",
      "description": "cat",
      "imgmain":
          "https://thumbs.dreamstime.com/b/portrait-gray-tabby-cat-white-background-lovely-pet-portrait-gray-tabby-cat-white-background-126243718.jpg",
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
      "letterkey": "d",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/D1.png",
      "cap": "D",
      "small": "d",
      "description": "dog",
      "imgmain":
          "https://media.istockphoto.com/photos/australian-shepherd-sitting-against-white-background-picture-id1154953522?k=20&m=1154953522&s=612x612&w=0&h=YLYsSZkUCWvHZcZtVkSBbC8x3blUHwNVFEwtIpUEejM=",
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
      "letterkey": "e",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/E1.png",
      "cap": "E",
      "small": "e",
      "description": "egg",
      "imgmain":
          "https://media.istockphoto.com/photos/isolated-white-egg-in-white-background-picture-id154918169?b=1&k=20&m=154918169&s=170667a&w=0&h=R8qyogNe893VOj_iuDNVEG2CK9JP6CKoji_jGXuq5lE=",
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
      "letterkey": "f",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/F1.png",
      "cap": "F",
      "small": "f",
      "description": "fish",
      "imgmain":
          "https://i.pinimg.com/736x/c8/b2/55/c8b2557b98df7a344b40f24dc9464a19.jpg",
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
      "letterkey": "g",
      "img":
          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/G1.png",
      "cap": "G",
      "small": "g",
      "description": "grapes",
      "imgmain":
          "https://media.istockphoto.com/photos/isolated-bunch-of-red-grapes-picture-id1186925401?k=20&m=1186925401&s=612x612&w=0&h=ox1Rlswi6BiRM9wXrtUhMyDOftuFTVclEkiafvBr2Rc=",
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
      "letterkey": "h",
      "img": "https://alphabetimals.com/wp-content/uploads/H1.png",
      "cap": "H",
      "small": "h",
      "description": "horse",
      "imgmain":
          "https://t4.ftcdn.net/jpg/00/74/05/11/360_F_74051134_CdXrAEOtlq7LcWo9EruXqW11wjy6MeKP.jpg",
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
      "letterkey": "i",
      "img": "https://alphabetimals.com/wp-content/uploads/I1.png",
      "cap": "I",
      "small": "i",
      "description": "icecream",
      "imgmain":
          "https://i.pinimg.com/736x/60/46/1f/60461f63e4a8960d53c17b40d8dfb41e.jpg",
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
      "letterkey": "j",
      "img": "https://alphabetimals.com/wp-content/uploads/J4.png",
      "cap": "J",
      "small": "j",
      "description": "joker",
      "imgmain":
          "https://static9.depositphotos.com/1010535/1214/i/450/depositphotos_12144889-stock-photo-funny-clown-jumping-over-a.jpg",
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
      "letterkey": "k",
      "img": "https://alphabetimals.com/wp-content/uploads/K4.png",
      "cap": "K",
      "small": "k",
      "description": "kite",
      "imgmain":
          "https://i.pinimg.com/originals/7e/ce/17/7ece173f1af2a6c03d517964dd038aea.jpg",
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
      "letterkey": "l",
      "img": "https://alphabetimals.com/wp-content/uploads/L1.png",
      "cap": "L",
      "small": "l",
      "description": "lemon",
      "imgmain":
          "https://media.istockphoto.com/photos/delicious-lemon-on-white-picture-id1363074436?k=20&m=1363074436&s=612x612&w=0&h=MexjTqzMlREy6uI4wGOEVviVXrI5ENZsbNpnU-H90Ms=",
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
      "letterkey": "m",
      "img": "https://alphabetimals.com/wp-content/uploads/M1.png",
      "cap": "M",
      "small": "m",
      "description": "monkey",
      "imgmain":
          "https://i.pinimg.com/originals/ac/23/06/ac23068b6d307728353d82d82977c1b6.jpg",
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
      "letterkey": "n",
      "img": "https://alphabetimals.com/wp-content/uploads/N3.png",
      "cap": "N",
      "small": "n",
      "description": "nest",
      "imgmain":
          "https://mandyevebarnett.files.wordpress.com/2012/10/12463871-empty-straw-nest-with-twigs-and-feathers-on-a-white-background.jpg",
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
