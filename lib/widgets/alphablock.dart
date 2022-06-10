import 'package:flutter/material.dart';

class AphalBlock extends StatelessWidget {
  const AphalBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Block(
      cap: '',
      img: '',
      small: '',
    );
  }
}

class Block extends StatefulWidget {
  final String img;
  final String cap;
  final String small;
  const Block(
      {Key? key, required this.img, required this.cap, required this.small})
      : super(key: key);

  @override
  State<Block> createState() => _AplhaState();
}

class _AplhaState extends State<Block> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        color: Colors.grey[200],
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: Image.network(widget.img),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.cap,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400]),
                  ),
                  Text(
                    widget.small,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
