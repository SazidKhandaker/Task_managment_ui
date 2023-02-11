import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

import '../homepage.dart';

class SteeperfivePage extends StatefulWidget {
  SteeperfivePage({super.key});

  @override
  State<SteeperfivePage> createState() => _SteeperfivePageState();
}

class _SteeperfivePageState extends State<SteeperfivePage> {
  TextEditingController teamcodecontroller = TextEditingController();

  GlobalKey<FormState> _fromkey = GlobalKey();
  XFile? imagepicker;
  imagefctn() async {
    ImagePicker _imagepicker = await ImagePicker();
    imagepicker = await _imagepicker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

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
                          "images/Slider4.svg",
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
                  "Invite Your Team Member",
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
                    "Email Member",
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
                          var email = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value.toString());
                          if (email == false) {
                            return "Invalid email ";
                          }
                        },
                        style: TextStyle(color: Color(0xff8E8E93)),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                                borderSide:
                                    BorderSide(color: Color(0xff8E8E93))),
                            hintText: "Type an email addrress",
                            hintStyle: GoogleFonts.nunito(
                                color: Color(0xff8E8E93), fontSize: 16),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                "images/Mail.svg",
                                height: 18,
                              ),
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_fromkey.currentState!.validate()) {
                          _showMyDialog();
                        }
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

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xff191A22),
          title: Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 32, bottom: 24),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Color(0xff8E8E93),
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: IconButton(
                      onPressed: () {
                        imagefctn();
                      },
                      icon: imagepicker == null
                          ? Icon(
                              Icons.photo_camera,
                              size: 25,
                              color: Color(0xffFFFFFF),
                            )
                          : Image.file(File(imagepicker!.path)))),
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Congratulations',
                      style: GoogleFonts.nunito(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffF8F8F8)),
                    ),
                  ),
                ),
                Text(
                  '   Parto team was created successfully, create your latest project so you can work with your team.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Color(0xffE4E4E6),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (_fromkey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext) => Home()));
                    }
                    ;
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 16, right: 16, top: 32, bottom: 32),
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
        );
      },
    );
  }
}
