// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture_app/view/signUp/signup_view.dart';

import '../../comman/button.dart';
import '../../comman/colors.dart';
import '../../comman/text_field.dart';
import '../home/bottom_view.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.background,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.01,
                ),
                Text(
                  "Welcome Back! Please Enter Your Details.",
                  style: TextStyle(
                    color: TColor.lightGray,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.1,
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
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      icon: Icon(
                        isCheck
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: TColor.gray,
                      ),
                    ),
                    Text(
                      "Remember For 30 Days",
                      style: TextStyle(
                        color: TColor.gray,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Forget Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.03,
                    )
                  ],
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
                        builder: (context) => SignUpView(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have An Account? ",
                        style: TextStyle(
                          color: TColor.gray,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Sign Up For Free",
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
