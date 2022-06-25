import 'package:flutter/material.dart';

class PluzzleMenuBLock extends StatefulWidget {
  final String menuimg;
  final String menudescription;
  const PluzzleMenuBLock(
      {Key? key, required this.menuimg, required this.menudescription})
      : super(key: key);

  @override
  State<PluzzleMenuBLock> createState() => _PluzzleMenuBLockState();
}

class _PluzzleMenuBLockState extends State<PluzzleMenuBLock> {
  @override
  Widget build(BuildContext c) {
    return Row(
      children: [
        Image.network(widget.menuimg),
        Text(
          widget.menudescription,
          style: const TextStyle(fontSize: 30, fontFamily: "Anton"),
        )
      ],
    );
  }
}
