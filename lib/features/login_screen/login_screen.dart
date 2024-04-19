import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_button.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              S.of(context).Start,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 190,
          ),
          CustomButton(
            text: "Facebook",
            backgroundColor: Color(0xff4267B2),
            icon: Icon(
              FontAwesomeIcons.facebook,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: "Twitter",
            backgroundColor: Color(0xff1DA1F2),
            icon: Icon(
              FontAwesomeIcons.twitter,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: "Google",
            backgroundColor: Color(0xffEA4335),
            icon: Icon(
              FontAwesomeIcons.google,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: isArabic() ? 210.5 : 222.5,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push('/SignInScreen');
            },
            child: RichText(
                text: TextSpan(
                    text: S.of(context).account,
                    style: TextStyle(
                        color: Color(0xff8F959E),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                    children: <TextSpan>[
                  TextSpan(
                      text: S.of(context).Signin,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500))
                ])),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/SignUpScreen');
              },
              child: CustomContainer(text: S.of(context).Create)),
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
