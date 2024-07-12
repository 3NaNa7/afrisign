// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:afrisign/onboarding/screens/auth_screen.dart';
import 'package:afrisign/onboarding/screens/register_screen.dart';
import 'package:afrisign/explore/screen/explore_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Afrisign',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            displayMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          )),
      home: const MyHomePage(),
      routes: {
        RegisterScreen.routeName: (_) => RegisterScreen(),
        ExploreHomeScreen.routeName: (_) => ExploreHomeScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const AuthScreen();
  }
}
