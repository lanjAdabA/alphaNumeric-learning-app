import 'package:flutter/material.dart';

class HintPage extends StatelessWidget {
  const HintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 40),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  " Hints / Guides ",
                  style: TextStyle(fontFamily: "SpecialElite", fontSize: 40),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '[1]. Single tap on text / image for sound:',
                  style: TextStyle(fontFamily: "SpecialElite", fontSize: 18),
                ),
                Text(
                  '-eg. try clicking in the alphabet chart.',
                  style: TextStyle(
                    fontFamily: "SpecialElite",
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(
                    fontFamily: "SpecialElite",
                    fontSize: 16,
                  ),
                ),
                Text(
                  '[2]. Double tap on text / image to open:',
                  style: TextStyle(fontFamily: "SpecialElite", fontSize: 18),
                ),
                Text(
                  '-eg. try taping twice in the alphabet chart.',
                  style: TextStyle(
                    fontFamily: "SpecialElite",
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(
                    fontFamily: "SpecialElite",
                    fontSize: 16,
                  ),
                ),
                Text(
                  '[3]. The Color tiles are Scrollable:',
                  style: TextStyle(fontFamily: "SpecialElite", fontSize: 18),
                ),
                Text(
                  '-N.B. the tile list can be scrolled individually,  \n they can be scrolled either left or right',
                  style: TextStyle(
                    fontFamily: "SpecialElite",
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(
                    fontFamily: "SpecialElite",
                    fontSize: 16,
                  ),
                ),
                Text(
                  '[4]. Draggable Exercises:',
                  style: TextStyle(fontFamily: "SpecialElite", fontSize: 16),
                ),
                Text(
                  '[a]. Alphabet Exercises: drag the letters to its corresponding Words/Image.',
                  style: TextStyle(
                    fontFamily: "SpecialElite",
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  '[b]. Number Exercises: drag the Number Figures to its corresponding in-Words.',
                  style: TextStyle(
                    fontFamily: "SpecialElite",
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  '[c]. Color Exercises: drag to same color tile.',
                  style: TextStyle(
                    fontFamily: "SpecialElite",
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
