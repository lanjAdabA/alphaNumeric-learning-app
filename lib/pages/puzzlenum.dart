import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Numv extends StatefulWidget {
  const Numv({Key? key}) : super(key: key);

  @override
  State<Numv> createState() => _NumvState();
}

class _NumvState extends State<Numv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("123"),
      ),
    );
  }
}
