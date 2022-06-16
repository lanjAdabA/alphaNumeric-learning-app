import 'package:flutter/material.dart';

class MiniLetterCard extends StatefulWidget {
  final String miniimage;
  final String minidescription;
  const MiniLetterCard(
      {Key? key, required this.miniimage, required this.minidescription})
      : super(key: key);

  @override
  State<MiniLetterCard> createState() => _MiniLeterCardState();
}

class _MiniLeterCardState extends State<MiniLetterCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: Image.network(
              widget.miniimage,
            ),
          ),
          Text(
            widget.minidescription,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

// class MiniLetterCard extends StatelessWidget {
  
//   final String miniimage;
//   final String minidescription;
//   const MiniLetterCard({
//     Key? key, required this.miniimage, required this.minidescription,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           SizedBox(
//             height: 120,
//             child: Image.network(
//               "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/A1-1.png",
//             ),
//           ),
//           const Text(
//             "data",
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }
