import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.icon});

  final Color backgroundColor;
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 335,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.only(
            left: isArabic() ? 0 : 130, right: isArabic() ? 130 : 0),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 6,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
