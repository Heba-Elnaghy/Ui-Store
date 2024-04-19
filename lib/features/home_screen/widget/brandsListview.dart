import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  const Brands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> text = [" Adidas", " Nike", " Fila", " Adidas", " Nike"];
    List<Image> image = [
      Image.asset(
        "assets/image/Adidas (1).png",
        height: 10,
        width: 22,
      ),
      Image.asset(
        "assets/image/Vector.png",
        height: 10,
        width: 22,
      ),
      Image.asset(
        "assets/image/fila-9 1.png",
        height: 10,
        width: 22,
      ),
      Image.asset(
        "assets/image/Adidas (1).png",
        height: 10,
        width: 22,
      ),
      Image.asset(
        "assets/image/Vector.png",
        height: 10,
        width: 22,
      ),
    ];
    List<double> width = [115, 98, 91, 115, 98];

    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Container(
            width: width[index],
            decoration: BoxDecoration(
              color: Color(0xffF5F6FA),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffFEFEFE),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: image[index]),
                SizedBox(width: 6),
                Text(
                  text[index],
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
