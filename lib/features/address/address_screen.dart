import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/core/widget/custom_field.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
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
          S.of(context).Address,
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
                Text(
                  S.of(context).Name,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                CustomBox(height: 50, width: 355, text: S.of(context).MrhRaju),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      S.of(context).Country,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      S.of(context).City,
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
                    CustomBox(
                        height: 50, width: 160, text: S.of(context).Bangladesh),
                    SizedBox(
                      width: 35,
                    ),
                    CustomBox(
                        height: 50, width: 160, text: S.of(context).Sylhet),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  S.of(context).PhoneNumber,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                CustomBox(height: 50, width: 355, text: "+880 1453-987533"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  S.of(context).Address,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                CustomBox(
                    height: 50,
                    width: 355,
                    text: S.of(context).ChhatakSunamgonj),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      S.of(context).SavePraddress,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: isArabic() ? 175 : 115,
                    ),
                    Transform.scale(
                        scale: 2,
                        child: SizedBox(
                          height: 25,
                          width: 35,
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
                  height: isArabic() ? 218.5 : 221.5,
                )
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/PaymentScreen');
              },
              child: CustomContainer(text: S.of(context).SaveAddress))
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
