import 'package:chat9ja/models/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatefulWidget {
  final App app;
  const Signup({Key? key, required this.app}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.app.bgColor(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create an",
                      style: TextStyle(
                        color: Colors.white38,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Create an account and get unlimited access\nto our app feature!",
                      style: TextStyle(
                        color: Colors.white38,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                        caption: "Your Full Name",
                        placeholder: "Christopher Henry",
                        app: widget.app),
                    CustomTextField(
                        caption: "Your email address",
                        placeholder: "username@email.com",
                        app: widget.app),
                    CustomTextField(
                        caption: "Set Password",
                        placeholder: "Type Password",
                        app: widget.app,
                        obscureText: true),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                            color: widget.app.themeColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text("Sign Up",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: widget.app.themeColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  CustomTextField(
      {required String caption,
      required String placeholder,
      required App app,
      bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          caption,
          style: TextStyle(
            fontSize: 14,
            color: app.lightMode ? Colors.black : Colors.white54,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: obscureText,
          style: TextStyle(
            color: app.lightMode ? Colors.black : Colors.white,
            fontSize: 16,
          ),
          decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: TextStyle(
                color: app.themeColor,
                fontSize: 16,
              ),
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: app.themeColor,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: app.lightMode ? Colors.black : Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ],
    );
  }
}
