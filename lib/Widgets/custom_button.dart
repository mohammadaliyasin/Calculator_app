import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 74.h,
        width: 74.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Color(0xff324a5f)
        ),
        child:  Center(
          child: Text(
                text,
                style: GoogleFonts.poppins(
              fontSize: 26.sp,
              color: const Color(0xffccc9dc),
              fontWeight: FontWeight.bold,
            ),
              ),
        ),
      ),
    );
  }
}

class CustomButton1 extends StatelessWidget {
  const CustomButton1({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 74.h,
        width: 74.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Color(0xff324a5f)
        ),
        child:  Center(
          child: Icon(Icons.backspace_rounded,color: Color(0xffccc9dc),),
        ),
      ),
    );
  }
}
