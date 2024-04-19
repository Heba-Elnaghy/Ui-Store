import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/add_review/widget/star.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Image> image = [
      Image.asset(
        "assets/image/97.png",
        height: 40,
      ),
      Image.asset(
        "assets/image/41.png",
        height: 40,
      ),
      Image.asset(
        "assets/image/39.png",
        height: 40,
      ),
      Image.asset(
        "assets/image/129.png",
        height: 40,
      ),
    ];

    List<String> text = [
      "Jenny Wilson",
      "Ronald Richards",
      "Guy Hawkins",
      "Savannah Nguyen",
    ];
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) => Container(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  image[index],
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        text[index],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/image/clock.png",
                            height: 11,
                            width: 11,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("13 Sep,2020",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff8F959E))),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  RichText(
                      text: TextSpan(
                          text: '4.8',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(
                          text: ' rating',
                          style: TextStyle(
                              color: Color(0xff8F959E),
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                        ),
                      ])),
                  Row(
                    children: [
                      Star(),
                      Star(),
                      Star(),
                      Star(),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Pellentesque malesuada eget\nvitae amet...",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff8F959E)),
          )
        ],
      )),
    );
  }
}
