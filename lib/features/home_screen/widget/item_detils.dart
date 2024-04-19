import 'package:flutter/material.dart';

class ItemDetils extends StatelessWidget {
  const ItemDetils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Image> image = [
      Image.asset(
        "assets/image/Rectangle 576.png",
      ),
      Image.asset(
        "assets/image/Rectangle 576.png",
        height: 77,
        width: 77,
      ),
      Image.asset(
        "assets/image/Rectangle 577.png",
        height: 77,
        width: 77,
      ),
      Image.asset(
        "assets/image/Rectangle 578.png",
        height: 77,
        width: 77,
      ),
    ];

    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Container(
              height: 77,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: image[index]),
        ),
      ),
    );
  }
}
