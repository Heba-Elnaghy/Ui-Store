import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home_screen/widget/Drawer.dart';
import 'package:flutter_application_1/features/home_screen/widget/brandsListview.dart';
import 'package:flutter_application_1/features/home_screen/widget/drawerList.dart';
import 'package:flutter_application_1/features/home_screen/widget/items.dart';
import 'package:flutter_application_1/features/home_screen/widget/searchField.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Image.asset(
              "assets/image/Vector (1).png",
              height: 25,
              width: 25,
              color: Colors.black,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 239, 240, 241)),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: isArabic() ? 0 : 20, left: isArabic() ? 20 : 0),
            child: Container(
              child: Image.asset(
                "assets/image/Vector (2).png",
                height: 25,
                width: 25,
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 239, 240, 241)),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(color: Colors.white),
        height: 80,
        width: 375,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Home",
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff9775FA)),
              ),
              Image.asset(
                "assets/image/Vector (3).png",
                height: 18,
                width: 19,
              ),
              Image.asset(
                "assets/image/Vector (2).png",
                height: 19,
                width: 18,
              ),
              Image.asset(
                "assets/image/Vector.png",
                height: 18,
                width: 19,
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(backgroundColor: Colors.white, child: DrawerScreen()),
      body: Padding(
        padding: const EdgeInsets.only(left: 22, right: 20),
        child: Column(
          children: [
            Align(
              alignment:
                  isArabic() ? Alignment.centerRight : Alignment.centerLeft,
              child: Text(
                S.of(context).Hello,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Align(
              alignment:
                  isArabic() ? Alignment.centerRight : Alignment.centerLeft,
              child: Text(
                S.of(context).WelcomLaza,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8F959E)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Search(),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff9775FA),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "assets/image/Voice.png",
                    height: 24,
                    width: 24,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).ChooseBrand,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  S.of(context).ViewAll,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8F959E)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Brands(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).NewArraival,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  S.of(context).ViewAll,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8F959E)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(child: Items())
          ],
        ),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
