import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/core/widget/custom_field.dart';
import 'package:flutter_application_1/features/pay/widget/card.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
        centerTitle: true,
        title: Text(
          S.of(context).Payment,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 200, child: CustomCard()),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push('/AddCardScreen');
                  },
                  child: Container(
                    height: 50,
                    width: 355,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff9775FA)),
                        color: Color(0xffF6F2FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/image/Plus.png"),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          S.of(context).Addnewcard,
                          style: TextStyle(
                            color: Color(0xff9775FA),
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                      width: 165,
                    ),
                    Text(
                      "CVV",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    CustomBox(height: 50, width: 160, text: "24/24"),
                    SizedBox(
                      width: 35,
                    ),
                    CustomBox(height: 50, width: 160, text: "7763"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).Savecardinfo,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Transform.scale(
                        scale: 2,
                        child: SizedBox(
                          height: 20,
                          width: 30,
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
                SizedBox(
                  height: isArabic() ? 24.5 : 30.5,
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/OrderConfirmScreen');
              },
              child: CustomContainer(text: S.of(context).SaveCard)),
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
