import 'package:flutter/material.dart';

class ItemSize extends StatelessWidget {
  const ItemSize({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> size = ["S", "M", "L", "XL", "2XL"];

    return SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                  color: Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Center(
                  child: Text(
                    size[index],
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                )),
          ),
        ));
  }
}
