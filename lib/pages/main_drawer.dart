import 'package:flutter/material.dart';
import 'package:learn/pages/contact.page.dart';
import 'package:learn/pages/hint.page.dart';
import 'package:learn/pages/info.page.dart';
import 'package:learn/pages/special_thanks.page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/profile.jpeg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const Text(
                    "thingbaijamjessikhuman@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.notes),
            title: const Text("Hints"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HintPage();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.alternate_email),
            title: const Text("contact me"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ContactPage();
                  },
                ),
              );
            },
          ),
          const ListTile(
            leading: Icon(Icons.feedback),
            title: Text("feedback"),
            onTap: null,
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Special Thanks"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ThanksPage();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("about"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const InfoPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
