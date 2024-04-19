// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Image> image = [
      Image.asset(
        "assets/image/image 9.png",
        height: 17,
        width: 26,
      ),
      Image.asset(
        "assets/image/image 10.png",
        height: 18,
        width: 16,
      ),
      Image.asset(
        "assets/image/Vector.png",
        height: 20,
        width: 20,
      ),
    ];
    List<Color> backgroundColor = [
      Color(0xffFFEEE3),
      Color(0xffF5F6FA),
      Color(0xffF5F6FA),
    ];
    List<Color> borderColor = [
      Color(0xffFF5F00),
      Color(0xffF5F6FA),
      Color(0xffF5F6FA),
    ];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 18, top: 15, left: 5),
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: borderColor[index]),
                    color: backgroundColor[index],
                    borderRadius: BorderRadius.circular(10)),
                child: image[index],
              ),
            ));
  }
}
