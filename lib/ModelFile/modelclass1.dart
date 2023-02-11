import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytaskone {
  String name;
  Color clr;
  Color clr2;
  Mytaskone(this.name, this.clr, this.clr2);

  static List<Mytaskone> listname() {
    return [
      Mytaskone("Urgent", Color(0xffFEEBF5), Color(0xffF79293)),
      Mytaskone("In Review", Color(0xffFFF6E4), Color(0xffFFBE3C)),
      Mytaskone("In Progress", Color(0xffFEEBF5), Color(0xff246BFD)),
      Mytaskone("Approve", Color(0xffDDEEEA), Color(0xff76BBAA)),
    ];
  }
}
