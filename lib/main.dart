import 'package:flutter/material.dart';
import 'package:flutter_zenia/Explore.dart';
import 'package:flutter_zenia/welcome.dart';
import 'package:flutter_zenia/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = [
      Explore(),
      Profile(),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cartoonify',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Welcome(),
    );
  }
}
