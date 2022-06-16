import 'package:flutter/material.dart';
import 'package:learn/widgets/minilettercard.dart';

class LetterPage extends StatefulWidget {
  final String cap;
  final String small;
  final String description;
  final String imgLetter;
  const LetterPage(
      {Key? key,
      required this.cap,
      required this.small,
      required this.description,
      required this.imgLetter})
      : super(key: key);

  @override
  State<LetterPage> createState() => _LetterPageState();
}

class _LetterPageState extends State<LetterPage> {
  final List data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Letter_Page"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.all(14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.cap,
                      style: const TextStyle(
                        fontSize: 80,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.small,
                      style: const TextStyle(
                          fontSize: 80,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.cap,
                      style: const TextStyle(
                        fontSize: 80,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Courgette",
                      ),
                    ),
                    Text(
                      widget.small,
                      style: const TextStyle(
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
                          widget.imgLetter,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(fontSize: 40),
                    )
                  ],
                ),
                Opacity(
                  opacity: .1,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 350,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 100,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
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

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return MiniLetterCard(
                      miniimage: data[index]["miniimage"],
                      minidescription: data[index]["minidescription"]);
                },
                // children: const [
                // MiniLetterCard(
                //   miniimage: "",
                //   minidescription: '',
                // ),
                // MiniLetterCard(
                //   miniimage: '',
                //   minidescription: '',
                // ),
                // MiniLetterCard(
                //   miniimage: '',
                //   minidescription: '',
                // ),
                // MiniLetterCard(
                //   miniimage: '',
                //   minidescription: '',
                // ),
                //],
              ),
            )
          ],
        ),
      ),
    );
  }
}
