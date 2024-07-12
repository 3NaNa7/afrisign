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
                padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/female_pic.png',
                        width: 50, height: 50),
                    Image.asset('assets/images/male_pic.png',
                        width: 50, height: 50)
                  ],
                ),
              ),
              Card(
                elevation: 3,
                surfaceTintColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      'assets/images/doctor_profile_img.jpeg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    'Doctor Kate',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  subtitle: Text('Hello [Chris]! How are you doing today?'),
                ),
              )
            ],
          ),
        ));
  }
}
