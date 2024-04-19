import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    List<Image> image = [
      Image.asset(
        "assets/image/Rectangle 568 (2).png",
      ),
      Image.asset(
        "assets/image/Rectangle 569 (2).png",
      ),
      Image.asset(
        "assets/image/Rectangle 568 (1).png",
      ),
      Image.asset(
        "assets/image/Rectangle 569 (1).png",
      ),
      Image.asset(
        "assets/image/Rectangle 568 (2).png",
      ),
      Image.asset(
        "assets/image/Rectangle 569 (2).png",
      ),
    ];

    return GridView.builder(
      itemCount: image.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2.5 / 4,
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 5.0,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          GoRouter.of(context).push('/ItemScreen');
        },
        child: Container(
          height: 257,
          width: 160,
          child: Column(
            children: [
              Container(
                width: 160,
                height: 203,
                child: image[index],
              ),
              SizedBox(
                height: 3,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).Nike,
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "\$99",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
