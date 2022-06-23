import 'package:flutter/material.dart';

class PopUpFingerPage extends StatefulWidget {
  final String img;
  final String f;
  final String description;
  const PopUpFingerPage({
    Key? key,
    required this.img,
    required this.description,
    required this.f,
  }) : super(key: key);

  @override
  State<PopUpFingerPage> createState() => _PopUpPageFingerState();
}

class _PopUpPageFingerState extends State<PopUpFingerPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500,
          child: Image.network(
            widget.img,
          ),
        ),
        Text(
          "${widget.description} ${int.parse(widget.f) == 1 ? 'FINGER' : 'FINGERS'}",
          style: const TextStyle(fontSize: 50),
        ),
      ],
    );
  }
}
