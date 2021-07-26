import 'package:flutter/material.dart';

import 'Button.dart';

class InputWrapper extends StatefulWidget {
  @override
  _InputWrapperState createState() => _InputWrapperState();
}

class _InputWrapperState extends State<InputWrapper> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text("Welcome $name"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.grey[200]))),
                  child: TextField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        hintText: "Enter your Username",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.grey[200]))),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.grey[200]))),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //   Text(
          //      "Forgot Password?",
          //      style: TextStyle(color: Colors.grey),
          //    ),
          SizedBox(
            height: 40,
          ),
          Button()
        ],
      ),
    );
  }
}
