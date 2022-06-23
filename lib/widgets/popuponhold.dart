import 'package:flutter/material.dart';

class PopUpPage extends StatefulWidget {
  final String miniimage;
  final String minidescription;
  final String cap;
  const PopUpPage(
      {Key? key,
      required this.miniimage,
      required this.minidescription,
      required this.cap})
      : super(key: key);

  @override
  State<PopUpPage> createState() => _PopUpPageState();
}

class _PopUpPageState extends State<PopUpPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500,
          child: Image.network(
            widget.miniimage,
          ),
        ),
        Text(
          "${widget.cap} for ${widget.minidescription}",
          style: const TextStyle(fontSize: 50),
        ),
      ],
    );
  }
}
