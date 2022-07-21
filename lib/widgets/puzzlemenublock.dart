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
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Image.asset(widget.menuimg),
        Text(
          widget.menudescription,
          style:  TextStyle(fontSize: width*.054, fontFamily: "RubikMoonrocks"),
        )
      ],
    );
  }
}
