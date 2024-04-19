import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/add_review/widget/rating.dart';
import 'package:flutter_application_1/features/add_review/widget/star.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

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
          S.of(context).Reviews,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 19),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      S.of(context).Review,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          "4.8",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                        Star(),
                        Star(),
                        Star(),
                        Star(),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push('/AddReviewScreen');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFF7043),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    height: 35,
                    width: 114,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/image/Edit Square.png",
                            height: 15, width: 15),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          S.of(context).AddReview,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(child: Rating())
          ],
        ),
      ),
    );
  }
}
