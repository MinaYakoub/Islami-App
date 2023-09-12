import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Lottie.asset('assets/animations/pray.json'),
        )  
      ]),
    );
  }
}
