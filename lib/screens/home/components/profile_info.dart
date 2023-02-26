import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.all(getProportionateScreenWidth(20)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Expanded(
                child: Row(children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/ceo.jpg'),
                radius: 35,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 61, 180),
                      ),
                      children: [
                        TextSpan(
                            text: "Hey, Abhishek \n",
                            style: (TextStyle(fontSize: 18))),
                        TextSpan(
                          text: "Welcome",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(30),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ))
            ])),
            Expanded(
              flex: 1,
              child: Row(
                children: const [
                  Expanded(
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                      TextSpan(
                        text: "10 Matches",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: "24 Credits",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
