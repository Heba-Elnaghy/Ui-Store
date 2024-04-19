import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/core/widget/textFormField.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
    }
  }

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
            child: RichText(
                text: TextSpan(
                    text: S.of(context).Welcome,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                    text: S.of(context).Pleaseenter,
                    style: TextStyle(
                        color: Color(0xff8F959E),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ])),
          ),
          SizedBox(
            height: 152.5,
          ),
          CustomFormField(text: S.of(context).Username),
          SizedBox(
            height: 20,
          ),
          CustomFormField(text: S.of(context).Password),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 214),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/ForgotPasswordScreen');
              },
              child: Text(
                S.of(context).Forgot,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffEA4335)),
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).Remember,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                Transform.scale(
                    scale: 2,
                    child: SizedBox(
                      width: 30,
                      height: 18,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Switch(
                          onChanged: toggleSwitch,
                          value: isSwitched,
                          activeColor: Colors.white,
                          activeTrackColor: Color(0xff4BC76D),
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.black,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: isArabic() ? 96 : 135,
          ),
          Center(
            child: RichText(
                text: TextSpan(
                    text: S.of(context).Term1,
                    style: TextStyle(
                        color: Color(0xff8F959E),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                    children: <TextSpan>[
                  TextSpan(
                    text: S.of(context).Term,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ])),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/HomeScreen');
              },
              child: CustomContainer(text: S.of(context).Login))
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
