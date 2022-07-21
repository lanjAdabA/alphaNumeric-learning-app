import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  // launchWhatsApp({
  //   required int phone,
  //   required String message,
  // }) async {
  //   {
  //     return " https://wa.me/$phone:7005843058:/?text=${Uri.parse(message)}";
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    {
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
                    InkWell(
                      child: const ListTile(
                        leading: Icon(
                          Icons.phone_android_outlined,
                          size: 42,
                          color: Colors.blue,
                        ),
                        title: Text("+91 7005843058"),
                      ),
                      onTap: () async {
                        // await launch("tel:+917005843058");  //working but 'launch' is deprecated

                        final Uri launchUri =
                            Uri(scheme: 'tel', path: "+91 7005843058");
                        await launchUrl(launchUri);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: const ListTile(
                        leading: Icon(
                          Icons.whatsapp,
                          size: 42,
                          color: Colors.green,
                        ),
                        title: Text("+91 7005843058"),
                      ),
                      onTap: () {
                        launch(
                            'whatsapp://send?text=sample text&phone=7005843058');
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: const ListTile(
                        leading: Icon(
                          Icons.mail_outline,
                          size: 42,
                          color: Colors.red,
                        ),
                        title: Text("thingbaijamjessikhuman@gmail.com"),
                      ),
                      onTap: () async {
                        String email = "thingbaijamjessikhuman@gmail.com";
                        final Uri launchUri =
                            Uri(scheme: 'mailto', path: email);
                        await launchUrl(launchUri);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'contact for any queries, tips and suggestions',
                      style:
                          TextStyle(fontFamily: "SpecialElite", fontSize: 16),
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
}
