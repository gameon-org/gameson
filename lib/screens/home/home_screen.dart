import 'package:flutter/material.dart';
import 'package:test_app/components/coustom_bottom_nav_bar.dart';
import 'package:test_app/enums.dart';

import 'components/body.dart';
import '../host_match/host_match.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, HostMatch.routeName),
        label: const Text('Host Match'),
        // icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
