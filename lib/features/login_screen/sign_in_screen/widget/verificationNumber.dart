import 'package:flutter/material.dart';

class VerificationNumber extends StatelessWidget {
  const VerificationNumber({super.key, required this.number});
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE7E8EA)),
          borderRadius: BorderRadius.circular(10)),
      height: 98,
      width: 77,
      child: Center(
          child: Text(
        number,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      )),
    );
  }
}
