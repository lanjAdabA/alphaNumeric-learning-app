import 'package:flutter/material.dart';
import 'package:learn/widgets/numblock.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class NumPage extends StatefulWidget {
  const NumPage({
    Key? key,
  }) : super(key: key);

  @override
  State<NumPage> createState() => _NumblockState();
}

class _NumblockState extends State<NumPage> {
  final List<Map<String, dynamic>> numdata = [
    {
      'fig': "1",
      'inwords': 'ONE',
      "color": Colors.red,
      "image":
          "https://media.istockphoto.com/vectors/number-1-educational-card-learning-counting-with-fingers-of-hand-vector-id1021001062?k=20&m=1021001062&s=612x612&w=0&h=6txrCPyQ5M6HgyEIfpycbUJ2qD8aFah2qBDvoR8YN8U="
    },
    {
      'fig': "2",
      'inwords': 'TWO',
      "color": Colors.pink,
      "image":
          "https://media.istockphoto.com/vectors/number-2-educational-card-learning-counting-with-fingers-of-hand-vector-id1021001020?k=20&m=1021001020&s=612x612&w=0&h=r9Hp8I6_aMOtoGmRm_K5hBnBmQ7wQHTUX7caK6C9lUM="
    },
    {
      'fig': "3",
      'inwords': 'THREE',
      "color": Colors.purple,
      "image":
          "https://media.istockphoto.com/vectors/number-3-educational-card-learning-counting-with-fingers-of-hand-vector-id1021001058?k=20&m=1021001058&s=612x612&w=0&h=umnpqdv9PnbBr1rOhpJEdaWXJzoUo14wRc7spccFm2E="
    },
    {
      'fig': "4",
      'inwords': 'FOUR',
      "color": Colors.indigo,
      "image":
          "https://media.istockphoto.com/vectors/number-4-educational-card-learning-counting-with-fingers-of-hand-vector-id1021001028?k=20&m=1021001028&s=612x612&w=0&h=FiGcN-e7toyWl9e7jymqoh7uw94AOE620QIop9NQ3Yg="
    },
    {
      'fig': "5",
      'inwords': 'FIVE',
      "color": Colors.blue,
      "image":
          "https://media.istockphoto.com/vectors/number-5-educational-card-learning-counting-with-fingers-of-hand-vector-id1021003420?k=20&m=1021003420&s=612x612&w=0&h=jAvScp2Q7Nw7cJgHwHlqC7GfnVNy5kKdbNk36Jk6o3I="
    },
    {
      'fig': "6",
      'inwords': 'SIX',
      "color": Colors.cyan,
      "image":
          "https://media.istockphoto.com/vectors/number-6-educational-card-learning-counting-with-fingers-of-hand-vector-id1021003480?k=20&m=1021003480&s=612x612&w=0&h=JaEJNSNp19iW3fBBx9uz1fog9yWLWpBE8wTkmrz4dIE="
    },
    {
      'fig': "7",
      'inwords': 'SEVEN',
      "color": Colors.green,
      "image":
          "https://media.istockphoto.com/vectors/number-7-educational-card-learning-counting-with-fingers-of-hand-vector-id1021003490?k=20&m=1021003490&s=612x612&w=0&h=PYxveRuCBOy9Nfjyq3a98VNCeRNLvLXhGuoiBUR3c8w="
    },
    {
      'fig': "8",
      'inwords': 'EIGHT',
      "color": Colors.yellow,
      "image":
          "https://media.istockphoto.com/vectors/number-8-educational-card-learning-counting-with-fingers-of-hand-vector-id1021003576?k=20&m=1021003576&s=612x612&w=0&h=DwHYmMWPwQE_rTZR2NZAdUkblY6G2waACZPdPakSMtw="
    },
    {
      'fig': "9",
      'inwords': 'NINE',
      "color": Colors.amber,
      "image":
          "https://media.istockphoto.com/vectors/number-9-educational-card-learning-counting-with-fingers-of-hand-vector-id1021003642?k=20&m=1021003642&s=612x612&w=0&h=7Gu_6bxS-T8-udF8H9QAPJrvuI5q_l69LbHaO-DU2OI="
    },
    {
      'fig': "10",
      'inwords': 'TEN',
      "color": Colors.orange,
      "image":
          "https://media.istockphoto.com/vectors/number-10-educational-card-learning-counting-with-fingers-of-hand-vector-id1021001216?k=20&m=1021001216&s=612x612&w=0&h=vhegu4iNxv4EJyu6L0oDlQxggjevFBKPc3QzbBr6kV4="
    },
  ];
/* 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Go Back"),
        centerTitle: true,
        brightness: Brightness.dark,
      ), */
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Number_Chart"),
        centerTitle: true,
      ),
//       body: SingleChildScrollView(
//         child: ListView.builder(
//             padding: const EdgeInsets.all(10),
//             itemCount: 10,
//             scrollDirection: Axis.vertical,
//             shrinkWrap: true,
//             itemBuilder: ((context, index) {
//               return NumBlock(
//                 fig: numdata[index]['fig'],
//                 inwords: numdata[index]['inwords'],
//                 color: numdata[index]["color"],
//                 image: numdata[index]['image'],
//               );
//             })),
//       ),
//     );
//   }
// }

      body: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(w / 30),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: const Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(milliseconds: 2500),
                  child: Container(
                    margin: EdgeInsets.only(bottom: w / 80),
                    height: w / 6,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: NumBlock(
                      fig: numdata[index]['fig'],
                      inwords: numdata[index]['inwords'],
                      color: numdata[index]["color"],
                      image: numdata[index]['image'],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
