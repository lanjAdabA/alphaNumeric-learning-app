import 'package:flutter/material.dart';
import 'package:learn/widgets/popupfingerpage.dart';

class NumBlock extends StatefulWidget {
  final String fig;
  final String inwords;
  final Color color;
  final String image;
  const NumBlock(
      {Key? key,
      required this.fig,
      required this.inwords,
      required this.color,
      required this.image})
      : super(key: key);

  @override
  State<NumBlock> createState() => _NumBlockState();
}

class _NumBlockState extends State<NumBlock> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.084,
      width: MediaQuery.of(context).size.width * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .25,
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  widget.fig,
                  style: TextStyle(
                      fontFamily: "CarterOne",
                      fontSize: 60,
                      color: widget.color),
                ),
              ),
              Text(
                "==>  ${widget.inwords}",
                style: const TextStyle(
                    fontFamily: "Anton", fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          InkWell(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 10,
              child: Image(image: NetworkImage(widget.image)),
            ),
            onLongPress: () {
              showModalBottomSheet(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
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
