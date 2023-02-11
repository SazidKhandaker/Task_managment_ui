import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:taskmanagment_ui/steeper/steeperthree.dart';

class SteepertwoPage extends StatelessWidget {
  const SteepertwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              height: 60,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 12, 0, 0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_left,
                          size: 48,
                          color: Color(0xffFFFFFF),
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        left: 90,
                        top: 30,
                      ),
                      height: 60,
                      child: Center(
                        child: SvgPicture.asset(
                          "images/Slider1.svg",
                          height: 10,
                        ),
                      ))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext) => SteeperthreePage()));
              },
              child: Container(
                margin:
                    EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 24),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff246BFD),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Center(
                    child: Text(
                  "Create Your Own Team",
                  style: GoogleFonts.nunito(
                      fontSize: 17,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600),
                )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 24),
              child: Center(
                  child: Text(
                "Or",
                style: GoogleFonts.nunito(
                    fontSize: 21,
                    color: Color(0xffF8F8F8),
                    fontWeight: FontWeight.w700),
              )),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (BuildContext) => LoginPage()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Center(
                    child: Text(
                  "Join Team",
                  style: GoogleFonts.nunito(
                      fontSize: 17,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
