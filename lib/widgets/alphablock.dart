import 'package:flutter/material.dart';

class AphalBlock extends StatelessWidget {
  const AphalBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Alpha();
  }
}

class Alpha extends StatefulWidget {
  const Alpha({Key? key}) : super(key: key);

  @override
  State<Alpha> createState() => _AplhaState();
}

class _AplhaState extends State<Alpha> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.amber,
    );
  }
}
