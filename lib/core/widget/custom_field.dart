// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
  }) : super(key: key);
  final String text;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        expands: true,
        maxLines: null,
        style: GoogleFonts.poppins(
          color: const Color(0xff020202),
          fontSize: 8,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffF5F6FA),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintText: text,
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff8F959E),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              decorationThickness: 6),
        ),
      ),
    );
  }
}
