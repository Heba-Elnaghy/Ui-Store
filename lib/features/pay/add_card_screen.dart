import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/core/widget/custom_field.dart';
import 'package:flutter_application_1/features/pay/widget/addCard.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';

import 'package:intl/intl.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

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
        centerTitle: true,
        title: Text(
          S.of(context).Addnewcard,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 65, child: AddCard()),
                SizedBox(
                  height: 20,
                ),
                Text(
                  S.of(context).CardOwner,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                CustomBox(height: 50, width: 355, text: S.of(context).MrhRaju),
                SizedBox(
                  height: 12,
                ),
                Text(
                  S.of(context).CardNumber,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                CustomBox(height: 50, width: 355, text: "5254 7634 8734 7690"),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "EXP",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      "CVV",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    CustomBox(height: 50, width: 160, text: "24/24"),
                    SizedBox(
                      width: 30,
                    ),
                    CustomBox(height: 50, width: 160, text: "7763"),
                  ],
                ),
                SizedBox(
                  height: isArabic() ? 301.5 : 305.5,
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/PaymentScreen');
              },
              child: CustomContainer(text: S.of(context).AddCard))
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
