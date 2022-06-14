import 'package:flutter/material.dart';

class MiniLetterCard extends StatelessWidget {
  const MiniLetterCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: Image.network(
              "https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_400/https://alphabetimals.com/wp-content/uploads/A1-1.png",
            ),
          ),
          const Text(
            "data",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
