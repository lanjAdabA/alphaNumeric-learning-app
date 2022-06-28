// import 'dart:html';
// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:learn/main.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     navigatetohome();
//   }

//   navigatetohome() async {
//     await Future.delayed(const Duration(milliseconds: 1500), () {});

//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => const LearnApp()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text("Let's Learn"),
//       ),
//     );
//   }
// }
