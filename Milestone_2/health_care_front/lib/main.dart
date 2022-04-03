import 'package:flutter/material.dart';
import 'Screens/Home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  HomeScreen(),
    );
  }
}