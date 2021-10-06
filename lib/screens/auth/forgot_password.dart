import 'package:chat9ja/custom_widgets/button.dart';
import 'package:chat9ja/models/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ForgotPassword extends StatefulWidget {
  final App app;
  const ForgotPassword({Key? key, required this.app}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.app.bgColor(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Set your",
                  style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Please Enter your new password",
                  style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                customTextField(
                    caption: "Password",
                    placeholder: "Type Password",
                    obscureText: true,
                    app: widget.app),
                customTextField(
                    caption: "Confirm Password",
                    placeholder: "Retype Password",
                    app: widget.app,
                    obscureText: true),
                Button(
                  caption: "Save",
                  app: widget.app,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  customTextField(
      {required String caption,
      required String placeholder,
      required App app,
      bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
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
        const SizedBox(
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
              labelStyle: const TextStyle(color: Colors.white),
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
