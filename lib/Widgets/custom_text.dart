import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Xtext extends StatelessWidget {
  const Xtext(
      {super.key, required this.text, required this.color, required this.size});
  final String text;
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: size.sp,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
