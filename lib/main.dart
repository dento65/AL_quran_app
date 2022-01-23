import 'package:flutter/material.dart';
import 'screens/loading_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // to remove the debug tag
      theme: ThemeData.dark(),
      home: MyApp2(), //my app2 in the loading screen
    );
  }
}