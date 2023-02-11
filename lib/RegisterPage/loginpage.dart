import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagment_ui/homepage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                        padding: const EdgeInsets.only(
                            left: 16, bottom: 12, top: 12),
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
                                        borderSide: BorderSide(
                                            color: Color(0xff8E8E93))),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext) => Home()));
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
                    "Login",
                    style: GoogleFonts.nunito(
                        fontSize: 17,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Center(
                      child: Text(
                    "Forgot Your Password",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: Color(0xffF8F8F8),
                        fontWeight: FontWeight.w400),
                  )),
                ),
              )
            ])));
  }
}
