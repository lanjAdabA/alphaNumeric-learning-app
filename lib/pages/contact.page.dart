import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

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
                  " contact info :",
                  style: TextStyle(fontFamily: "SpecialElite", fontSize: 40),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          margin: const EdgeInsets.only(top: 30, bottom: 50),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/profile.jpeg"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 42,
                      color: Colors.blue,
                    ),
                    title: Text("7005843058"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.whatsapp,
                      size: 42,
                      color: Colors.green,
                    ),
                    title: Text("7005843058"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 42,
                      color: Colors.red,
                    ),
                    title: Text("thingbaijamjessi@gmail.com"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'contact for any queries, tips and suggestions',
                    style: TextStyle(fontFamily: "SpecialElite", fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
