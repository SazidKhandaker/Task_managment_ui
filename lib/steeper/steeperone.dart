import 'dart:math';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:taskmanagment_ui/steeper/steepertwo.dart';

class SteeperonePage extends StatefulWidget {
  SteeperonePage({super.key});

  @override
  State<SteeperonePage> createState() => _SteeperonePageState();
}

class _SteeperonePageState extends State<SteeperonePage> {
  @override
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey();

  XFile? imagepicker;
  imagefctn() async {
    ImagePicker _imagepicker = await ImagePicker();
    imagepicker = await _imagepicker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

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
                          Navigator.of(context).pop();
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
                          "images/Slider.svg",
                          height: 10,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 18),
              child: Center(
                child: Text(
                  "Complete Your Profiles",
                  style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffF8F8F8)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
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
            SizedBox(
              height: 16,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 12),
                child: Align(
                  alignment: Alignment(-1.0, 0),
                  child: Text(
                    "Your Email Address",
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
              key: _formkey,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        cursorColor: Color(0xff8E8E93),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email field is empty";
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
                            hintText: "Enter your email address",
                            hintStyle: GoogleFonts.nunito(
                                color: Color(0xff8E8E93), fontSize: 16),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff8A8A8E),
                            )),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, bottom: 12, top: 12),
                      child: Align(
                        alignment: Alignment(-1.0, 0),
                        child: Text(
                          "Your Password",
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            color: Color(0xffE4E4E6),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(bottom: 16),
                      height: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              obscureText: true,
                              style: TextStyle(color: Color(0xff8E8E93)),
                              controller: passwordcontroller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password is empty";
                                }
                                if (value.length < 4) {
                                  return "Passowrd is too short";
                                }
                                if (value.length > 10) {
                                  return "Password is too long";
                                }
                              },
                              cursorColor: Color(0xff8E8E93),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28),
                                      borderSide:
                                          BorderSide(color: Color(0xff8E8E93))),
                                  hintText: "Enter your password",
                                  fillColor: Color(0xffE4E4E6),
                                  hintStyle: GoogleFonts.nunito(
                                      color: Color(0xff8E8E93), fontSize: 16),
                                  prefixIcon: Icon(
                                    Icons.key,
                                    color: Color(0xff8A8A8E),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext) => SteepertwoPage()));
                }
                ;
              },
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 24),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
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
  }
}
