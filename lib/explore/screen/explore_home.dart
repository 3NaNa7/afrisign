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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 50.0),
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
              Transform.rotate(
                angle: -0.2,
                child: Card(
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
                ),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome [Chris] 👋',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    'Explore our latest categories in health and educational fields.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(111, 214, 149, 1)),
                    onPressed: () => Navigator.of(context)
                        .pushNamed(ExploreHomeScreen.routeName),
                    child: Text('Explore',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(color: Colors.white)),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ));
  }
}
