import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xffB0A3E5),
            Color(0xff7661C5),
          ],
          stops: [0.0, 1.0],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        )),
        child: Stack(
          children: [
            Positioned(
                top: 5,
                right: 35,
                left: 1,
                bottom: 170,
                child: SizedBox(
                  child: Image.asset(
                    "assets/image/man.png",
                    height: 750,
                    width: 600,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
              left: 15,
              right: 15,
              bottom: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 244,
                width: 345,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Look Good, Feel Good",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Create your individual & unique style and \n             look amazing everyday.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff8F959E)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        SizedBox(
                          height: 60,
                          width: 152,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 239, 240, 241),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                            ),
                            onPressed: () {
                              GoRouter.of(context).push('/LoginScreen');
                            },
                            child: Text(
                              S.of(context).Man,
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff8F959E)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          height: 60,
                          width: 152,
                          child: TextButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff9775FA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                            ),
                            onPressed: () {
                              GoRouter.of(context).push('/LoginScreen');
                            },
                            child: Text(
                              S.of(context).Woman,
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push('/LoginScreen');
                      },
                      child: Text(
                        S.of(context).Skip,
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff8F959E)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
