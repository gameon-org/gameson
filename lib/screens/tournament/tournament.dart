import 'package:flutter/material.dart';
import 'package:test_app/components/coustom_bottom_nav_bar.dart';
import 'package:test_app/enums.dart';

import 'components/body.dart';

class Tournament extends StatelessWidget {
  const Tournament({super.key});
  static String routeName = "/tournament";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.tournament),
      // backgroundColor: Colors.greenAccent,
    );
  }
}
