import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../RegisterPage/loginpage.dart';
import '../RegisterPage/signup.dart';
import 'Onboarding1.dart';
import 'Onboarding2.dart';
import 'Onboarding3.dart';

class OnbordraingPage extends StatefulWidget {
  const OnbordraingPage({super.key});

  @override
  State<OnbordraingPage> createState() => _OnbordraingPageState();
}

class _OnbordraingPageState extends State<OnbordraingPage> {
  PageController _controller = PageController();
  int? pagenumber;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      pagenumber = value;
                    });
                  },
                  controller: _controller,
                  children: [
                    OnboardingOnepage(),
                    OnboardingTwoPage(),
                    OnboardingThreePage(),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 32),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                _controller.jumpToPage(0);
                              },
                              child: Container(
                                height: 8,
                                width: pagenumber == 0 ? 60 : 30,
                                decoration: BoxDecoration(
                                  color: pagenumber == 0
                                      ? Colors.blue
                                      : Colors.white24,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                _controller.jumpToPage(1);
                              },
                              child: Container(
                                height: 8,
                                width: pagenumber == 1 ? 60 : 30,
                                decoration: BoxDecoration(
                                  color: pagenumber == 1
                                      ? Colors.blue
                                      : Colors.white24,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                _controller.jumpToPage(2);
                              },
                              child: Container(
                                height: 8,
                                width: pagenumber == 2 ? 60 : 30,
                                decoration: BoxDecoration(
                                  color: pagenumber == 2
                                      ? Colors.blue
                                      : Colors.white24,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext) => SignUp()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 16, right: 16, top: 32, bottom: 16),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff246BFD),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Center(
                              child: Text(
                            "Sign Up",
                            style: GoogleFonts.nunito(
                                fontSize: 17,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext) => LoginPage()));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(left: 16, right: 16, bottom: 16),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Color(0xffFFFFFF)),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Center(
                              child: Text(
                            "Login",
                            style: GoogleFonts.nunito(
                                fontSize: 17,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(bottom: 7),
                        height: 6,
                        width: 135,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
