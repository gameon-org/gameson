import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          const Text(
            "Abhisek K",
            style: (TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 20),
          Row(
            children: const [
              Expanded(
                  child: Text(
                '3 \n Games',
                textAlign: TextAlign.center,
                style: (TextStyle(color: Colors.blue, fontSize: 15)),
              )),
              Expanded(
                child: Text(
                  '2 \n Upcomming',
                  textAlign: TextAlign.center,
                  style: (TextStyle(color: Colors.red, fontSize: 15)),
                ),
              ),
              Expanded(
                child: Text(
                  '1 \n Matches',
                  textAlign: TextAlign.center,
                  style: (TextStyle(color: Colors.indigo, fontSize: 15)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "My Teams",
            icon: "assets/icons/group.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "My Bookings",
            icon: "assets/icons/group.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "My Favorite",
            icon: "assets/icons/group.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Help & Support Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
