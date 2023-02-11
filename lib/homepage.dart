import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'ModelFile/modelclass1.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var listarry = Mytaskone.listname();
  GlobalKey<FormState> _fromkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16, top: 16),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 8),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Color(0xff8E8E93),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        "Parto Team",
                        style: GoogleFonts.nunito(
                            color: Color(0xffE4E4E6),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xffFFFFFF),
                            size: 30,
                          ))
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Color(0xffFFFFFF),
                        size: 30,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16),
              child: Text(
                "Project Task",
                style: GoogleFonts.nunito(
                    color: Color(0xffE4E4E6),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 70,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Container(
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff292B3E),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff9C67F9),
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Text(
                                "5",
                                style: GoogleFonts.nunito(
                                    color: Color(0xffE4E4E6),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Ongoing",
                                style: GoogleFonts.nunito(
                                    color: Color(0xffE4E4E6),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff292B3E),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffF79293),
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Text(
                                "7",
                                style: GoogleFonts.nunito(
                                    color: Color(0xffE4E4E6),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Under\nReview",
                                style: GoogleFonts.nunito(
                                    color: Color(0xffE4E4E6),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                          height: 60,
                          width: 135,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff292B3E),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff76BBAA),
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Text(
                                "4",
                                style: GoogleFonts.nunito(
                                    color: Color(0xffE4E4E6),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Uncoming",
                                style: GoogleFonts.nunito(
                                    color: Color(0xffE4E4E6),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff292B3E),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffF79293),
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Text(
                                "7",
                                style: GoogleFonts.nunito(
                                    color: Color(0xffE4E4E6),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Under\nReview",
                                style: GoogleFonts.nunito(
                                    color: Color(0xffE4E4E6),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32, bottom: 16, left: 16),
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Task",
                    style: GoogleFonts.nunito(
                        color: Color(0xffE4E4E6),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      "See More",
                      style: GoogleFonts.nunito(
                          color: Color(0xffE4E4E6),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listarry.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var mylist = listarry[index];
                  return Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    child: Container(
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff292B3E),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8.0, left: 16),
                                      child: SvgPicture.asset(
                                          "images/CheckmarkSquare.svg"),
                                    ),
                                    Text(
                                      "Research Analysis",
                                      style: GoogleFonts.nunito(
                                          color: Color(0xffE4E4E6),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: 16, top: 16, bottom: 8),
                                  height: 25,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: mylist.clr,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "${mylist.name}",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: mylist.clr2),
                                  )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 48),
                                          width: 80,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: Color(0xff9C67F9),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                        Container(
                                          width: 210,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: Color(0xff363748),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Text(
                                    "5/20",
                                    style: GoogleFonts.nunito(
                                        color: Color(0xffE4E4E6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, left: 48),
                              child: Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: Color(0xff76BBAA),
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "2 Days Left",
                                    style: GoogleFonts.nunito(
                                        color: Color(0xffE4E4E6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  );
                }),
            Expanded(
                flex: 10,
                child: Container(
                  color: Color(0xff292B3E),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              child: SvgPicture.asset(
                            "images/Menu.svg",
                            height: 120,
                          )),
                          Container(
                              child: SvgPicture.asset(
                            "images/Menu (1).svg",
                            height: 120,
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              child: SvgPicture.asset(
                            "images/Menu (2).svg",
                            height: 120,
                          )),
                          Container(
                              child: SvgPicture.asset(
                            "images/Menu (3).svg",
                            height: 120,
                          )),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet<void>(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * .92,
                  color: Color(0xff191A22),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 6.0, top: 17, bottom: 17, left: 16),
                                child: Text(
                                  "Add New Project",
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    color: Color(0xffE4E4E6),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16, left: 16, bottom: 16),
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
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, bottom: 12, top: 16),
                          child: Align(
                            alignment: Alignment(-1.0, 0),
                            child: Text(
                              "Project Name",
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
                                  cursorColor: Color(0xff8E8E93),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Name field is empty";
                                    }

                                    var email = RegExp(r"^[[a-zA-Z]+")
                                        .hasMatch(value.toString());
                                    if (email == false) {
                                      return "Name is invalid ";
                                    }
                                  },
                                  style: TextStyle(color: Color(0xff8E8E93)),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(28),
                                          borderSide: BorderSide(
                                              color: Color(0xff8E8E93))),
                                      hintText: "Enter Project Name",
                                      hintStyle: GoogleFonts.nunito(
                                          color: Color(0xff8E8E93),
                                          fontSize: 16),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "images/Suitcase 1.svg",
                                            height: 24,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 12, top: 16),
                                  child: Align(
                                    alignment: Alignment(-1.0, 0),
                                    child: Text(
                                      "Assigned to",
                                      style: GoogleFonts.nunito(
                                        fontSize: 18,
                                        color: Color(0xffE4E4E6),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: TextFormField(
                                  cursorColor: Color(0xff8E8E93),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Name field is empty";
                                    }

                                    var email = RegExp(r"^[[a-zA-Z]+")
                                        .hasMatch(value.toString());
                                    if (email == false) {
                                      return "Name is invalid ";
                                    }
                                  },
                                  style: TextStyle(color: Color(0xff8E8E93)),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(28),
                                          borderSide: BorderSide(
                                              color: Color(0xff8E8E93))),
                                      hintText: "Select Your Team",
                                      hintStyle: GoogleFonts.nunito(
                                          color: Color(0xff8E8E93),
                                          fontSize: 16),
                                      suffixIcon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Color(0xff8A8A8E),
                                      ),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "images/Add Person.svg",
                                            height: 24,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 12, top: 16),
                                  child: Align(
                                    alignment: Alignment(-1.0, 0),
                                    child: Text(
                                      "Progress",
                                      style: GoogleFonts.nunito(
                                        fontSize: 18,
                                        color: Color(0xffE4E4E6),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: TextFormField(
                                  cursorColor: Color(0xff8E8E93),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Name field is empty";
                                    }

                                    var email = RegExp(r"^[[a-zA-Z]+")
                                        .hasMatch(value.toString());
                                    if (email == false) {
                                      return "Name is invalid ";
                                    }
                                  },
                                  style: TextStyle(color: Color(0xff8E8E93)),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(28),
                                          borderSide: BorderSide(
                                              color: Color(0xff8E8E93))),
                                      hintText: "Ongoing",
                                      hintStyle: GoogleFonts.nunito(
                                          color: Color(0xff8E8E93),
                                          fontSize: 16),
                                      suffixIcon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Color(0xff8A8A8E),
                                      ),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "images/Calendar Check.svg",
                                            height: 24,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 12, top: 16),
                                  child: Align(
                                    alignment: Alignment(-1.0, 0),
                                    child: Text(
                                      "Timeline",
                                      style: GoogleFonts.nunito(
                                        fontSize: 18,
                                        color: Color(0xffE4E4E6),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: TextFormField(
                                  cursorColor: Color(0xff8E8E93),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Name field is empty";
                                    }

                                    var email = RegExp(r"^[[a-zA-Z]+")
                                        .hasMatch(value.toString());
                                    if (email == false) {
                                      return "Name is invalid ";
                                    }
                                  },
                                  style: TextStyle(color: Color(0xff8E8E93)),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(28),
                                          borderSide: BorderSide(
                                              color: Color(0xff8E8E93))),
                                      hintText: "2 March 2021",
                                      hintStyle: GoogleFonts.nunito(
                                          color: Color(0xff8E8E93),
                                          fontSize: 16),
                                      suffixIcon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Color(0xff8A8A8E),
                                      ),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "images/Calendar.svg",
                                            height: 24,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ))),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16),
                                child: SvgPicture.asset("images/Link.svg"),
                              ),
                              Text(
                                "Attched Files",
                                style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  color: Color(0xffE4E4E6),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (_fromkey.currentState!.validate()) {
                              print("Heloo");
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 16, right: 16, top: 20, bottom: 24),
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
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Center(
              child: Icon(
            Icons.add,
            color: Color(0xffFFFFFF),
          )),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
      ),
    );
  }
}
