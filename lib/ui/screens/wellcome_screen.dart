import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med/ui/screens/home/main_screen.dart';
import 'package:med/utils/theme.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({Key? key}) : super(key: key);

  @override
  _WellcomeScreenState createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.off(() => MainScreen());
      print("zzz");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Wellcome Back ",
              style: primaryTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            ),
            Text(
              "Andhika",
              style: greenTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
