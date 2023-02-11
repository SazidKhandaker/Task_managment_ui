import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../steeper/steeperone.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController emailcontroller = TextEditingController();
  GlobalKey<FormState> _fromkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 16, bottom: 16),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.close,
                          size: 18,
                          color: Color(0xffFFFFFF),
                        )),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 6.0, top: 17, bottom: 17),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: Color(0xffE4E4E6),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 12),
              child: Text(
                "Your Email Address",
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: Color(0xffE4E4E6),
                  fontWeight: FontWeight.w400,
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
                        cursorColor: Color(0xff8E8E93),
                        controller: emailcontroller,
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
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (_fromkey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext) => SteeperonePage()));
                }
                ;
              },
              child: Container(
                margin:
                    EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
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
