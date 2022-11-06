import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sonder/Util/HexColor.dart';

TextStyle h1TextStyle = GoogleFonts.notoSerifGeorgian(
    textStyle: TextStyle(
        fontFamily: "MillerDisplayRoman,Georgia,serif",
        color: headingTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w600));
TextStyle h2TextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: headingTextColor, fontSize: 16, fontWeight: FontWeight.w600));
TextStyle dscTextStyle = GoogleFonts.poppins(color: dscTextColor, fontSize: 12);
