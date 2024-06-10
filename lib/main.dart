import 'package:flutter/material.dart';
//import 'package:realm_dart/realm.dart';
import 'splashscreen.dart';
//import 'map.dart';

void main() {
  runApp(const FreeWalk());
}

class FreeWalk extends StatelessWidget {
  const FreeWalk({super.key});

  //Root widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Free Walk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 153, 0)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

