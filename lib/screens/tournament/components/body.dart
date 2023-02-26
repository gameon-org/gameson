import 'package:flutter/material.dart';
import 'package:test_app/screens/host_match/host_match.dart';
import '../../../size_config.dart';
import './section_title.dart';
import './profile_menu.dart';
import 'package:test_app/components/default_button.dart';
import 'carousel.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(30),
                right: getProportionateScreenWidth(20),
                top: getProportionateScreenHeight(50)),
            child: SectionTitle(
              title: "Tournament",
              press: () {},
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          SpecialOfferCard(
            colorCode: 0x655113ff,
            image: "assets/images/tournament_3.jpg",
            category: "Upcoming Tournaments",
            numOfBrands: 18,
            buttonText: "Register",
            press: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          SpecialOfferCard(
            colorCode: 0x50FF0033,
            image: "assets/images/tournament_2.jpg",
            category: "Ongoing Tournaments",
            numOfBrands: 24,
            buttonText: "View Scores",
            press: () {},
          ),
          SizedBox(height: 20),
          SpecialOfferCard(
            colorCode: 0x5000FF33,
            image: "assets/images/tournament_1.jpg",
            category: "Past Tournaments",
            numOfBrands: 24,
            buttonText: "See Details",
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          SizedBox(height: getProportionateScreenWidth(20)),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(30),
                right: getProportionateScreenWidth(20),
                top: getProportionateScreenHeight(10)),
            child: SectionTitle(
              title: "Tournament Gallery",
              press: () {},
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          // CarouselSliderExample(),
        ],
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
    required this.colorCode,
    required this.buttonText,
  }) : super(key: key);

  final String category;
  final String image;
  final String buttonText;
  final int colorCode;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(0)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(325),
          height: getProportionateScreenWidth(150),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(colorCode)
                      // gradient: LinearGradient(
                      //   begin: Alignment.topCenter,
                      //   end: Alignment.bottomCenter,
                      //   colors: [
                      //     // Color(56433),
                      //     Color.fromARGB(255, 255, 0, 0).withOpacity(0.15),
                      //     Color.fromARGB(255, 255, 238, 0).withOpacity(0.15),
                      //   ],
                      // ),
                      ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 150,
                    child: DefaultButton(
                      text: buttonText,
                      press: () =>
                          Navigator.pushNamed(context, HostMatch.routeName),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // TextSpan(text: "$numOfBrands ")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
