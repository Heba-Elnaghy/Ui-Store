import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/core/widget/custom_field.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class AddReviewScreen extends StatelessWidget {
  const AddReviewScreen({super.key});

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
          S.of(context).AddReview,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).Name,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                CustomBox(height: 50, width: 335, text: S.of(context).Typename),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).Howexperience,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                CustomBox(
                    height: 213,
                    width: 335,
                    text: S.of(context).Describeexperience),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).Star,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/image/Slider.png",
                  width: 335,
                  height: 20,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: isArabic() ? 233.5 : 235.5,
                )
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/ItemScreen');
              },
              child: CustomContainer(text: S.of(context).SubmitReview))
        ],
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
