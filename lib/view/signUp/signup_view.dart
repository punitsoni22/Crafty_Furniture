// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_app/comman/button.dart';
import 'package:furniture_app/comman/colors.dart';
import 'package:furniture_app/comman/text_field.dart';
import 'package:furniture_app/view/home/bottom_view.dart';
import 'package:furniture_app/view/signUp/login_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.background,
      appBar: AppBar(
        backgroundColor: TColor.background,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.01,
                ),
                Text(
                  "Let's Create Account Together",
                  style: TextStyle(
                    color: TColor.lightGray,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),
                Text(
                  "Full Name",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.01,
                ),
                TextFieldE(
                  hinttext: "Enter Your Name",
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.01,
                ),
                TextFieldE(
                  hinttext: "Enter Your Email",
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.01,
                ),
                TextFieldE(
                  hinttext: "Enter Your Password",
                  obscureText: true,
                ),
                SizedBox(
                  height: media.width * 0.01,
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Button(
                  title: "Sign Up",
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomView(),
                      ),
                    );
                  },
                  fontSize: 16,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: media.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: TColor.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/img/google.png"),
                        SizedBox(
                          width: media.width * 0.02,
                        ),
                        Text(
                          "Sign Up With Google",
                          style: TextStyle(
                              color: TColor.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInView(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have An Account? ",
                        style: TextStyle(
                          color: TColor.gray,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
