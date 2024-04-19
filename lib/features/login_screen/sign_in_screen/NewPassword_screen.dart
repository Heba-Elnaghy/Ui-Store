import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/core/widget/textFormField.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
              S.of(context).NewPass,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 180,
          ),
          CustomFormField(text: S.of(context).Password),
          SizedBox(
            height: 20,
          ),
          CustomFormField(text: S.of(context).ConfPass),
          SizedBox(
            height: isArabic() ? 254.5 : 259.5,
          ),
          Center(
            child: Text(
              S.of(context).writpass,
              style: TextStyle(
                  color: Color(0xff8F959E),
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/HomeScreen');
              },
              child: CustomContainer(text: S.of(context).ResetPass))
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
