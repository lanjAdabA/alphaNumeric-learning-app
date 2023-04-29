import 'package:flutter/material.dart';
import 'package:learn/pages/contact.page.dart';
import 'package:learn/pages/hint.page.dart';
import 'package:rate_my_app/rate_my_app.dart';

import 'package:learn/pages/info.page.dart';
import 'package:learn/pages/special_thanks.page.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  final RateMyApp rateMyApp = RateMyApp(
    minLaunches: 1,
    minDays: 0,
    remindDays: 2,
    remindLaunches: 10,
    googlePlayIdentifier: "com.lanjAdabA",
  );
  @override
  void initState() {
    rateMyApp.init().then((_) {});
    super.initState();
  }

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
            title: const Text("Contact me"),
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
          ListTile(
            leading: const Icon(Icons.feedback_outlined),
            title: const Text("Feedback"),
            onTap: () async {
              String email = "thingbaijamjessikhuman@gmail.com";
              final Uri launchUri = Uri(scheme: 'mailto', path: email);
              await launchUrl(launchUri);
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text("Rating"),
            onTap: () {
              rateMyApp.showRateDialog(
                context,
                message:
                    "If you like this app, please take a little bit of your time to review it! \n It really helps us and it shouldn't take you more than a minute.",
                title: "Rate this app",
                rateButton: "RATE",
                noButton: "NO THANKS",
                laterButton: "MAYBE LATER",
                onDismissed: () =>
                    rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.thumb_up_alt_outlined),
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
            leading: const Icon(Icons.info_outline),
            title: const Text("About"),
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
