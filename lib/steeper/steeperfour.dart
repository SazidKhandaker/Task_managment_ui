import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:taskmanagment_ui/steeper/steeperfive.dart';

class SteeperfourPage extends StatelessWidget {
  SteeperfourPage({super.key});
  TextEditingController teamcodecontroller = TextEditingController();
  GlobalKey<FormState> _fromkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(children: [
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
                          "images/Slider3.svg",
                          height: 10,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Center(
                child: Text(
                  "Enter Your Code Team",
                  style: GoogleFonts.nunito(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffF8F8F8)),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 12, top: 16),
                child: Align(
                  alignment: Alignment(-1.0, 0),
                  child: Text(
                    "Code Team",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Color(0xffE4E4E6),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Form(
              key: _fromkey,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        controller: teamcodecontroller,
                        cursorColor: Color(0xff8E8E93),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Team-Code field is empty";
                          }
                        },
                        style: TextStyle(color: Color(0xff8E8E93)),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                                borderSide:
                                    BorderSide(color: Color(0xff8E8E93))),
                            hintText: "e.g JXHJKH",
                            hintStyle: GoogleFonts.nunito(
                                color: Color(0xff8E8E93), fontSize: 16),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: SvgPicture.asset(
                                "images/Key.svg",
                                height: 18,
                              ),
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_fromkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext) =>
                                      SteeperfivePage()));
                        }
                        ;
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 16, right: 16, top: 186, bottom: 24),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff246BFD),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Center(
                            child: Text(
                          "Continue",
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
            )
          ])),
    );
  }
}
