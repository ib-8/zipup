import 'package:flutter/material.dart';
import 'package:super_z/pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zipup',
      theme: ThemeData(primaryColor: Colors.greenAccent[400]),
      home: WelcomePage(),
    );
  }
}
