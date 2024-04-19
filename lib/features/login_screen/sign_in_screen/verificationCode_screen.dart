import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/features/login_screen/sign_in_screen/widget/verificationNumber.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 20,
            height: 20,
            child: Icon(
              Icons.arrow_back,
              size: 25,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 239, 240, 241)),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              S.of(context).Verfcode,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
              child: Image.asset(
            "assets/image/Object.png",
            height: 166,
            width: 225,
          )),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 27, left: 27),
            child: Row(
              children: [
                VerificationNumber(number: "7"),
                SizedBox(
                  width: 9,
                ),
                VerificationNumber(number: "4"),
                SizedBox(
                  width: 9,
                ),
                VerificationNumber(number: "2"),
                SizedBox(
                  width: 9,
                ),
                VerificationNumber(number: "3"),
              ],
            ),
          ),
          SizedBox(
            height: isArabic() ? 180.5 : 191.5,
          ),
          RichText(
              text: TextSpan(
                  text: '00:20',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  children: <TextSpan>[
                TextSpan(
                  text: S.of(context).resendcode,
                  style: TextStyle(
                      color: Color(0xff8F959E),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ])),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/NewPasswordScreen');
              },
              child: CustomContainer(text: S.of(context).Confcode)),
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
