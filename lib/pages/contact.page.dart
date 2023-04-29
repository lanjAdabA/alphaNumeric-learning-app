import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                height: 60,
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
                          FontAwesomeIcons.whatsapp,
                          size: 42,
                          color: Colors.green,
                        ),
                        title: Text("+91 7005843058"),
                      ),
                      onTap: () {
                        launchUrlString(
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
                      'Feel free to contact for any queries, tips, suggestions and support.',
                      style:
                          TextStyle(fontFamily: "SpecialElite", fontSize: 16),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "About me: \n  ",
                      style:
                          TextStyle(fontFamily: "SpecialElite", fontSize: 20),
                    ),
                    const Text(
                      " Currently  pursuing  Master's of  Computer Application, Under Manipur University, Canchipur. And this Application is created as for the Project for partial fulfilment of the Degree completion. ",
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
