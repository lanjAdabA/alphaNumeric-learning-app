import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:learn/pages/popupfingerpage.dart';

class NumBlock extends StatefulWidget {
  final String fig;
  final String inwords;
  final Color color;
  final String image;
  final String speechlong;
  const NumBlock(
      {Key? key,
      required this.fig,
      required this.inwords,
      required this.speechlong,
      required this.color,
      required this.image})
      : super(key: key);

  @override
  State<NumBlock> createState() => _NumBlockState();
}

class _NumBlockState extends State<NumBlock> {
  final FlutterTts flutterTts = FlutterTts();
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(.8);
    await flutterTts.setSpeechRate(.4);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.084,
      width: MediaQuery.of(context).size.width * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () => speak(widget.fig),
                child: Container(
                  width: MediaQuery.of(context).size.width * .25,
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    widget.fig,
                    style: TextStyle(
                        fontFamily: "CarterOne",
                        fontSize: width * .099,
                        color: widget.color),
                  ),
                ),
              ),
              InkWell(
                onTap: () => speak(widget.speechlong),
                child: Text(
                  "👉🏼  ${widget.inwords}",
                  style: TextStyle(
                      fontFamily: "Anton",
                      fontSize: width * .075,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          InkWell(
            child: ClipOval( 
              // height: MediaQuery.of(context).size.height - 10,
              child: Image(image: AssetImage(widget.image)),
            ),
            // child: SizedBox(
            //   height: MediaQuery.of(context).size.height - 10,
            //   child: Image: AssetImage(widget.image)),
            // ),
            onDoubleTap: () {
              showModalBottomSheet(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  context: context,
                  builder: (BuildContext context) {
                    return PopUpFingerPage(
                      f: widget.fig,
                      img: widget.image,
                      description: widget.inwords,
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
