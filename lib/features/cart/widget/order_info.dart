import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> text1 = [
      S.of(context).Subtotal,
      S.of(context).Shippingcost,
      S.of(context).Total
    ];
    List<String> text2 = ["\$110", "\$10", "\$120"];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1[index],
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8F959E)),
            ),
            Text(
              text2[index],
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
