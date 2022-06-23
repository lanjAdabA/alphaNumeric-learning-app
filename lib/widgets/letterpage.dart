// import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:learn/widgets/minilettercard.dart';
import 'package:learn/widgets/popuponhold.dart';
import 'package:learn/widgets/popuponholdcenter.dart';

class LetterPage extends StatefulWidget {
  final String cap;
  final String small;
  final String description;
  final String imgLetter;
  //place to check
  final List<Map<String, dynamic>> minipage;

  //final

  // List minipage = [];
  const LetterPage({
    Key? key,
    required this.cap,
    required this.small,
    required this.description,
    required this.imgLetter,
    required this.minipage,
  }) : super(key: key);

  @override
  State<LetterPage> createState() => _LetterPageState();
}

class _LetterPageState extends State<LetterPage> {
  //place to check

  @override
  Widget build(BuildContext context) {
    //log(widget.minipage.toString());
    // String a = widget.minipage[0]["minidescription"];
    // print("object$a");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Letter-Page"),
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
                        child: InkWell(
                          child: Image.network(
                            widget.imgLetter,
                          ),
                          onLongPress: () {
                            showModalBottomSheet(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)),
                                context: context,
                                builder: (BuildContext context) {
                                  return PopUpCenterPage(
                                    img: widget.imgLetter,
                                    description: widget.description,
                                  );
                                });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(fontSize: 36),
                    )
                  ],
                ),
                Opacity(
                  opacity: .0,
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
            //     itemCount: 4,
            //     // scrollDirection: Axis.horizontal,
            //     itemBuilder: ((context, index) => const MiniLetterCard(minidescription: '', miniimage: '',))),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                itemCount: widget.minipage.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  //   return Text(widget.minipage[index].toString());
                  return InkWell(
                    child: MiniLetterCard(
                        miniimage: widget.minipage[index]["miniimage"],
                        minidescription: widget.minipage[index]
                            ["minidescription"]),
                    onLongPress: () {
                      showModalBottomSheet(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          context: context,
                          builder: (BuildContext context) {
                            return PopUpPage(
                              miniimage: widget.minipage[index]["miniimage"],
                              minidescription: widget.minipage[index]
                                  ["minidescription"],
                              cap: widget.cap,
                            );
                          });
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
