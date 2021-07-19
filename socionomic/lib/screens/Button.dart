import 'package:flutter/material.dart';
import './HomeScreen.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HomePage.routeName);
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.yellow[500],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "SignUp",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
