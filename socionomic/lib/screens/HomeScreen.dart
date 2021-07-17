import 'package:flutter/material.dart';
import 'package:socionomic/constants/Colors.dart';
import 'package:socionomic/data/dummy_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stories = StroyData;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              height: 75,
              decoration: BoxDecoration(color: primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.add_box_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(
                    Icons.message_rounded,
                    color: Colors.white,
                    size: 28,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 25, left: 15),
                                child: Text(
                                  'Top 20 today',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 75,
                                margin: EdgeInsets.only(top: 25, right: 15),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  margin: EdgeInsets.only(top: 3),
                                  child: Text(
                                    'View all',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: stories.length,
                                itemBuilder: (ctx, index) {
                                  return Container(
                                    margin: EdgeInsets.only(
                                        left: index == 0 ? 20 : 10,
                                        right: 10,
                                        top: 35),
                                    child: Column(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Image.network(
                                            stories[index].image,
                                            height: 75,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            stories[index].title,
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
