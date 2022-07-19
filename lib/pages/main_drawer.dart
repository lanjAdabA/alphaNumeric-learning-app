import 'package:flutter/material.dart';

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
                    "Thingbaijam Jessi Khuman",
                    style: TextStyle(color: Colors.white, fontSize: 18),
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
          const ListTile(
            leading: Icon(Icons.notes),
            title: Text("Hints"),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.alternate_email),
            title: Text("contact me"),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.feedback),
            title: Text("feedback"),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.star),
            title: Text("Special Thanks"),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text("about"),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
