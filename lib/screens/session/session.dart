import 'package:flutter/material.dart';
import 'package:test_app/components/coustom_bottom_nav_bar.dart';
import 'package:test_app/enums.dart';
import '../details/components/custom_app_bar.dart';
import 'components/body.dart';
import '../../models/Product.dart';

class Session extends StatelessWidget {
  const Session({super.key});
  static String routeName = "/session";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Fittness Session",
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      // appBar: (title: "New Events"),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.session),
    );
  }
}
