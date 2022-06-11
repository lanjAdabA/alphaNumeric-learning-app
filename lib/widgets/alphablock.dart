import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  const Block({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlphaBlock(
      cap: '',
      img: '',
      small: '',
    );
  }
}

class AlphaBlock extends StatefulWidget {
  final String img;
  final String cap;
  final String small;
  const AlphaBlock(
      {Key? key, required this.img, required this.cap, required this.small})
      : super(key: key);

  @override
  State<AlphaBlock> createState() => _AplhaState();
}

class _AplhaState extends State<AlphaBlock> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: Card(
        margin: const EdgeInsets.all(1),
        color: Colors.grey[200],
        child: Container(
          padding: const EdgeInsets.only(left: 5, right: 5),
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
