// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class ExploreHomeScreen extends StatelessWidget {
  static const routeName = 'explore-home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Explore'),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/female_pic.png',
                        width: 50, height: 50),
                    Image.asset('assets/images/male_pic.png',
                        width: 50, height: 50)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
