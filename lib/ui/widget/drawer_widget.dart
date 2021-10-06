import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med/ui/screens/setting_screen.dart';
import 'package:med/utils/theme.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget drawerItem(String text, Function onPressed) {
      return TextButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: primaryTextStyle.copyWith(fontSize: 16),
        ),
      );
    }

    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topLeft,
        child: Container(
          height: MediaQuery.of(context).size.width,
          width: 200,
          decoration: BoxDecoration(
            color: kbackgroundColor3,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: 40,
                    color: ktextColor2,
                  ),
                ),
                drawerItem("Covid Help", () {}),
                drawerItem("Setting", () {
                  Get.to(() => SettingScreen());
                }),
                drawerItem("Contact Us", () {}),
                drawerItem("FAQs", () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
