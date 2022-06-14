import 'package:flutter/material.dart';
import 'package:learn/widgets/minilettercard.dart';

class PageLetter extends StatelessWidget {
  const PageLetter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LetterPage();
  }
}

class LetterPage extends StatefulWidget {
  const LetterPage({Key? key}) : super(key: key);

  @override
  State<LetterPage> createState() => _LetterPageState();
}

class _LetterPageState extends State<LetterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Letter_Page"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "A",
                      style: TextStyle(
                        fontSize: 80,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "a",
                      style: TextStyle(
                          fontSize: 80,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "A",
                      style: TextStyle(
                        fontSize: 80,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Courgette",
                      ),
                    ),
                    Text(
                      "a",
                      style: TextStyle(
                        fontSize: 80,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Courgette",
                      ),
                    ),
                    // Text("a",
                    //     style: TextStyle(
                    //       fontFamily: "Courgette",
                    //     )

                    //     // GoogleFonts.courgette(
                    //     //     fontStyle: FontStyle.normal,
                    //     //     color: Colors.blue,
                    //     //     fontSize: 80),
                    //     ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: SizedBox(
                        height: 500,
                        width: 500,
                        child: Image.network(
                          "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/A1-1.png",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "description",
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
                Opacity(
                  opacity: .2,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 350,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.arrow_left,
                            size: 100,
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 100,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            // ListView.builder(
            //     itemCount: 3,
            //     // scrollDirection: Axis.horizontal,
            //     itemBuilder: ((context, index) => const MiniLetterCard()))

            ListView(
              padding: const EdgeInsets.all(20),
              shrinkWrap: true,
              //scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: const [
                    MiniLetterCard(),
                    MiniLetterCard(),
                    MiniLetterCard(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
