import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home_screen/widget/drawerList.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/main.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var t = S.of(context)!;
    final Locale locale = Localizations.localeOf(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: isArabic() ? 0 : 15, right: isArabic() ? 15 : 0, top: 85),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset("assets/image/Frame 1 1 (1).png"),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        Text(
                          "Mrh Raju",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          S.of(context).VerifiProf,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8F959E)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 225, 225, 225),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              S.of(context).Orders,
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff8F959E)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              DrawerList(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: isArabic() ? 0 : 4, right: isArabic() ? 4 : 0, top: 8),
          child: Row(
            children: [
              PopupMenuButton(
                  icon: Icon(
                    Icons.language,
                    color: Color.fromARGB(255, 107, 107, 107),
                  ),
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          value: 'en',
                          child: Text("English"),
                        ),
                        PopupMenuItem(
                          value: 'ar',
                          child: Text("العربية"),
                        ),
                      ],
                  onSelected: (value) =>
                      MyApp.setLocale(context, Locale(value))),
              Text(
                S.of(context).Language,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        SizedBox(
          height: 180,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: isArabic() ? 0 : 15,
            right: isArabic() ? 15 : 0,
          ),
          child: Row(
            children: [
              Image.asset("assets/image/Logout.png"),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacement('/LoginScreen');
                },
                child: Text(
                  S.of(context).Logout,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFF5757)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
