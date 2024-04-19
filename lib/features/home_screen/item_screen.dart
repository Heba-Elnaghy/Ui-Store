import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/features/add_review/widget/star.dart';
import 'package:flutter_application_1/features/home_screen/widget/item_detils.dart';
import 'package:flutter_application_1/features/add_review/widget/rating.dart';
import 'package:flutter_application_1/features/home_screen/widget/size.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              Image.asset(
                "assets/image/Rectangle 568 (2).png",
                width: 170,
                height: 190,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).MenHodi,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8F959E)),
                  ),
                  Text(
                    S.of(context).Price,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8F959E)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).Nikesports,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Text(
                    "\$120",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ItemDetils(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).Size,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Text(
                    S.of(context).SizeGuide,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8F959E)),
                  ),
                ],
              ),
              ItemSize(),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).Description,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                        text:
                            'The Nike Throwback Pullover Hoodie is made\nfrom premium French terry fabric that blends a\nperformance feel with',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8F959E)),
                        children: <TextSpan>[
                      TextSpan(
                        text: S.of(context).ReadMore,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ])),
              ),
              SizedBox(
                height: 3.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).Reviews,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push('/ReviewsScreen');
                    },
                    child: Text(
                      S.of(context).ViewAll,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8F959E)),
                    ),
                  ),
                ],
              ),
              Container(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/image/97.png",
                            height: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                "Jenny Wilson",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/image/clock.png",
                                    height: 11,
                                    width: 11,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("13 Sep,2020",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff8F959E))),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: '4.8',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                TextSpan(
                                  text: S.of(context).rating,
                                  style: TextStyle(
                                      color: Color(0xff8F959E),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                              ])),
                          Row(
                            children: [
                              Star(),
                              Star(),
                              Star(),
                              Star(),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: isArabic() ? 0 : 10,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Pellentesque malesuada eget\nvitae amet...",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8F959E)),
                  )
                ],
              )),
              SizedBox(
                height: isArabic() ? 2 : 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).TotalPrice,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Text(
                    "\$125",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ]),
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/CartScreen');
              },
              child: CustomContainer(text: S.of(context).AddtoCart)),
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
