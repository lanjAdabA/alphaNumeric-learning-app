import 'package:flutter/material.dart';

class ColorTile extends StatefulWidget {
  final String colourname;
  final Color colour;
  const ColorTile({Key? key, required this.colourname, required this.colour})
      : super(key: key);

  @override
  State<ColorTile> createState() => _ColorTileState();
}

class _ColorTileState extends State<ColorTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      // color: colors[index % colors.length],
      color: widget.colour,
      child: Container(
          padding: const EdgeInsets.all(18),
          child:
              // Text(colourname[index % colourname.length]),
              Text(widget.colourname)),
    );
  }
}
