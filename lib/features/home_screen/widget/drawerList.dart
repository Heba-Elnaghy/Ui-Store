import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Image> image = [
      Image.asset("assets/image/sun.png"),
      Image.asset("assets/image/Info Circle.png"),
      Image.asset("assets/image/Lock.png"),
      Image.asset("assets/image/Bag.png"),
      Image.asset("assets/image/Wallet.png"),
      Image.asset("assets/image/Heart.png"),
      Image.asset("assets/image/Setting.png"),
    ];
    List<String> text = [
      S.of(context).DarkMode,
      S.of(context).AccountInfo,
      S.of(context).Password,
      S.of(context).Order,
      S.of(context).MyCards,
      S.of(context).Wishlist,
      S.of(context).Settings,
    ];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 7,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Row(
          children: [
            image[index],
            SizedBox(width: 12),
            Text(
              text[index],
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
