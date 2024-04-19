import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/features/cart/widget/cart_container.dart';
import 'package:flutter_application_1/features/cart/widget/location.dart';
import 'package:flutter_application_1/features/cart/widget/order_info.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
        centerTitle: true,
        title: Text(
          S.of(context).Cart,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 320,
                  child: CartList(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).DeliveryAddress,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Location(
                  text1: "Chhatak, Sunamgonj 12/8AB",
                  text2: "Sylhet",
                  image: Image.asset(
                    "assets/image/Location.png",
                    color: Color(0xffFF5F00),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).PaymentMethod,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Location(
                  text1: "Visa Classic                            ",
                  text2: "**** 7690",
                  image: Image.asset(
                    "assets/image/Frame.png",
                    color: Color(0xff3D93F8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).OrderInfo,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: isArabic() ? 82.5 : 88.5,
                  child: OrderInfo(),
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/AddressScreen');
              },
              child: CustomContainer(text: S.of(context).Checkout)),
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
