import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constwidgets {
  Text textWidget(
    String text,
    FontWeight fontWeight,
    double fontSize,
    Color color, {
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
