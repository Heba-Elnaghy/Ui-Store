import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Image> image = [
      Image.asset(
        "assets/image/IMG.png",
        height: 100,
        width: 100,
      ),
      Image.asset(
        "assets/image/IMG (1).png",
        height: 100,
        width: 100,
      )
    ];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
        ),
        child: Card(
          elevation: 8,
          child: Container(
            height: 120,
            width: 335,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  image[index],
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12, bottom: 12, left: 12),
                    child: Column(
                      children: [
                        Text(
                          "Men's Tie-Dye T-Shirt\nNike Sportswear",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "\$45 (-\$4.00 Tax)",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8F959E)),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_circle_down_outlined,
                              color: Color(0xff8F959E),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.arrow_circle_up,
                              color: Color(0xff8F959E),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 81,
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: Color(0xff8F959E),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
