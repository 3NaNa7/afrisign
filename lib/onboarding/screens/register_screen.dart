// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/custom_textformfield.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = 'register-screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(245, 242, 242, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(245, 242, 242, 1),
          title: Text("Registration"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin:
                    EdgeInsets.only(left: 12, right: 12, top: 30, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
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
                          CustomTextFormField(
                            label: 'Password',
                            obscureText: true,
                          ),
                          CustomTextFormField(
                            label: 'Confirm Password',
                            obscureText: true,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: value,
                                  onChanged: (val) {
                                    setState(() {
                                      value = val;
                                    });
                                  }),
                              Text('Remember me')
                            ],
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(111, 214, 149, 1)),
                      onPressed: () => Navigator.of(context)
                          .pushNamed(RegisterScreen.routeName),
                      child: Text('Register Now',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: Colors.white)),
                    ),
                    Text('or'),
                    ElevatedButton.icon(
                      icon: Image.asset('assets/images/google_logo.png',
                          height: 24),
                      label: Text('Continue with Google',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: Colors.black)),
                      onPressed: () {
                        // Handle Google sign-in here
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
