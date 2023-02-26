import 'package:flutter/material.dart';

import 'components/body.dart';

int _activeStepIndex = 0;

class HostMatch extends StatelessWidget {
  const HostMatch({super.key});
  static String routeName = "/hostMatch";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Host a Match',
      //     style: TextStyle(color: Colors.black, fontSize: 20),
      //   ),
      //   centerTitle: true,
      // ),
      body: Body(),
    );
  }
}
