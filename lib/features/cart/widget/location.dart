// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({
    Key? key,
    required this.text1,
    required this.text2,
    required this.image,
  }) : super(key: key);
  final String text1;
  final String text2;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 244, 244, 245)),
              child: Center(child: image),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12, left: 15),
              child: Column(
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8F959E)),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/image/Check.png")
              ],
            )
          ],
        ),
      ),
    );
  }
}
