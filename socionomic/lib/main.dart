import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socionomic/screens/HomeScreen.dart';
import './constants/Colors.dart' as ConstColors;

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
