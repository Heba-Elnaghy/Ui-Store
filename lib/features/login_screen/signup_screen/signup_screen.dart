import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/core/widget/textFormField.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
            child: Text(
              S.of(context).SignUp,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 130,
          ),
          CustomFormField(text: S.of(context).Username),
          SizedBox(
            height: 20,
          ),
          CustomFormField(text: S.of(context).Password),
          SizedBox(
            height: 20,
          ),
          CustomFormField(text: S.of(context).Email),
          SizedBox(
            height: 60,
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
            height: isArabic() ? 184.5 : 188.5,
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/HomeScreen');
              },
              child: CustomContainer(text: S.of(context).SignUp))
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
