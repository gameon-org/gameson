import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/football-svgrepo-com.svg", "text": "Football"},
      {"icon": "assets/icons/badminton-svgrepo-com.svg", "text": "Badminton"},
      {"icon": "assets/icons/basketball-svgrepo-com.svg", "text": "Basketball"},
      {"icon": "assets/icons/pingpong-svgrepo-com.svg", "text": "Table tennis"},
      {"icon": "assets/icons/all-svgrepo-com.svg", "text": "More"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 195, 90),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 8),
            Text(text!,
                textAlign: TextAlign.center,
                style: (TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
