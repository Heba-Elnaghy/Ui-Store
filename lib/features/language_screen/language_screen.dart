import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_container.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/main.dart';
import 'package:go_router/go_router.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var t = S.of(context)!;
    final Locale locale = Localizations.localeOf(context);
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
          Center(
            child: Text(
              S.of(context).Language,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      MyApp.setLocale(context, Locale('en'));
                    },
                    child: Text(
                      "English",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      MyApp.setLocale(context, Locale('ar'));
                    },
                    child: Text(
                      "العربيه",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 404.5,
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/GenderScreen');
              },
              child: CustomContainer(text: S.of(context).Start2)),
        ],
      ),
    );
  }
}
