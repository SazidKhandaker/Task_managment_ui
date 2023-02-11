import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingThreePage extends StatelessWidget {
  const OnboardingThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Positioned(
                top: -175,
                child: Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    height: 400,
                    width: 480,
                    decoration: BoxDecoration(
                        color: Color(0xff8E8E93),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0, top: 10),
                    child: Text(
                      "Get Notified when you Get a New Assignment",
                      style: GoogleFonts.nunito(
                        fontSize: 36,
                        color: Color(0xffE4E4E6),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
