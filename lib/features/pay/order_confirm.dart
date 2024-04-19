import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/core/widget/custom_field.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

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
          SizedBox(
            height: 110,
          ),
          Image.asset(
            "assets/image/undraw_order_confirmed_aaw7 1.png",
            height: 232,
            width: 279,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            S.of(context).OrderConfirmed,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          ),
          Text(
            S.of(context).Yourorderconfirmed,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff8F959E)),
          ),
          SizedBox(
            height: isArabic() ? 145.5 : 126.5,
          ),
          Container(
            height: 50,
            width: 335,
            decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Row(
                children: [
                  Text(
                    S.of(context).GoToOrders,
                    style: TextStyle(
                      color: Color(0xff8F959E),
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/HomeScreen');
              },
              child: CustomContainer(text: S.of(context).ContinueShopping))
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
