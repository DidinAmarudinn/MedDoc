import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med/ui/screens/setting_screen.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class CustomAppbar extends StatelessWidget {
  final Color color;
  final String title;
  final Function onPressed;
  final bool isDefault;
  final bool isProfile;

  const CustomAppbar(
      {Key? key,
      required this.color,
      required this.title,
      required this.onPressed,
      this.isDefault = false,
      this.isProfile = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title, style: secondaryTextStyle),
      elevation: 0,
      leading: isDefault
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: ktextColor2,
              ),
            )
          : IconButton(
              onPressed: () {
                onPressed();
              },
              icon: Icon(
                Icons.menu_outlined,
                color: ktextColor2,
              ),
            ),
      backgroundColor: color,
      actions: [
        isProfile
            ? GestureDetector(
                onTap: () {
                  Get.to(() => SettingScreen());
                },
                child: Padding(
                  padding: EdgeInsets.only(right: defaultMargin / 2),
                  child: Image.asset(kiconSetting, width: 30),
                ),
              )
            : SizedBox()
      ],
    );
  }
}
