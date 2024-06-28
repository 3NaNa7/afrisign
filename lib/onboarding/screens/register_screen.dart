// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/custom_textformfield.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = 'register-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(245, 242, 242, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(245, 242, 242, 1),
          title: Text("Registration"),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 12, right: 12, top: 30, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Let's Get You Started",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Form(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTextFormField(label: 'First Name'),
                    CustomTextFormField(label: 'Last Name'),
                    CustomTextFormField(label: 'Username'),
                    CustomTextFormField(label: 'Password'),
                    CustomTextFormField(label: 'Confirm Password'),
                  ],
                ),
              ))
            ],
          ),
        ));

    /* Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                children: [
                  Text(
                    "Let's Get You Started",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "First Name",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text("Remember me"),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement registration logic
                      // You can send the input details to the backend here
                    },
                    child: Text("Register"),
                  ),
                ],
              ),
            ),
          ),
        )); */
  }
}
