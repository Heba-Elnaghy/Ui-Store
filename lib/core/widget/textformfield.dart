import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 61,
      width: 335,
      child: TextFormField(
        decoration: InputDecoration(
            labelText: text, labelStyle: TextStyle(color: Color(0xff8F959E))),
      ),
    );
  }
}
