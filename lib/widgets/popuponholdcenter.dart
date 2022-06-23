import 'package:flutter/material.dart';

class PopUpCenterPage extends StatefulWidget {
  final String img;
  final String description;
  const PopUpCenterPage({
    Key? key,
    required this.img,
    required this.description,
  }) : super(key: key);

  @override
  State<PopUpCenterPage> createState() => _PopUpPageCenterState();
}

class _PopUpPageCenterState extends State<PopUpCenterPage> {
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
          widget.description,
          style: const TextStyle(fontSize: 50),
        ),
      ],
    );
  }
}
