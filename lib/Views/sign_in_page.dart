import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gass_in/Views/sign_up_page.dart';
import 'package:gass_in/Widgets/bot_nav_bar.dart';
import 'package:gass_in/constant.dart';

import '../Widgets/field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 66,
              ),
              Image.asset("assets/images/cycle.png"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0xFF747683)),
              ),
              const Text.rich(
                TextSpan(
                    text: "Gass",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 64),
                    children: [
                      TextSpan(
                        text: "IN",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 64),
                      )
                    ]),
              ),
              const SizedBox(
                height: 90,
              ),
              const Text("Email Address"),
              const SizedBox(
                height: 17,
              ),
              Field(
                hintText: "username@gmail.com",
              ),
              const SizedBox(
                height: 12.5,
              ),
              const Text("Password"),
              const SizedBox(
                height: 17,
              ),
              Field(
                isPassword: true,
                hintText: "password",
              ),
              const SizedBox(
                height: 17,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBar(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width, 53),
                      backgroundColor: buttonGreen,
                      textStyle: const TextStyle(color: Colors.white)),
                  child: const Text("Sign In")),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                      child: Divider(
                    color: grey2,
                  )),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 17),
                      child: const Text(
                        "or",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: grey2),
                      )),
                  const Expanded(
                      child: Divider(
                    color: grey2,
                  )),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFF747683))),
                height: 53,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/google.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text("Continue with Google"),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Text.rich(
                TextSpan(text: "Don't have an account? ", children: [
                  TextSpan(
                      text: "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ));
                        })
                ]),
              ),
              const SizedBox(
                height: 67,
              )
            ],
          ),
        ),
      ),
    );
  }
}
