import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/HomeScreen.dart';
import './screens/SignUp.dart';
import './constants/Colors.dart' as ConstColors;

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  //static const color = (#f2544c);
  @override
  Widget build(BuildContext context) {
    // var color = (#f2544c);

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
        //    "/": (context) => Home(),
      },
    );
  }
}
