// ignore_for_file: prefer_const_constructors
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../onbordaringPage/Onboarding1.dart';
import '../onbordaringPage/onbordaringpage.dart';

class SplaseScreen extends StatefulWidget {
  const SplaseScreen({super.key});

  @override
  State<SplaseScreen> createState() => _SplaseScreenState();
}

class _SplaseScreenState extends State<SplaseScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnbordraingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xff191A22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                child: SvgPicture.asset("images/Icon.svg"),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, top: 32),
                child: Container(
                  child: Text(
                    "RANCANG",
                    style: GoogleFonts.nunito(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffE4E4E6)),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Your Personal Task Manager",
                  style: GoogleFonts.nunito(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffE9E9EB)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18, left: 17, right: 18),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 60,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 260),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xff246BFD),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Getting Started",
                        style: GoogleFonts.nunito(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFFFF)),
                      ),
                      SvgPicture.asset("images/Arrow Chevron Right.svg"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
