import 'package:flutter/material.dart';
import 'package:med/ui/components/custom_appbar.dart';
import 'package:med/ui/widget/drawer_widget.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    _itemSetting(String title, Function onPressed, bool isConnectWithUs,
        String imageAsset) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultMargin, vertical: defaultMargin / 2),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(right: defaultMargin),
              decoration: BoxDecoration(
                color: kbackgroundItemSetting.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Image.asset(
                  imageAsset,
                  width: 20,
                ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            isConnectWithUs
                ? Row(
                    children: [
                      Image.asset(
                        kimageFb,
                        width: 25,
                      ),
                      SizedBox(
                        width: defaultMargin,
                      ),
                      Image.asset(
                        kimageIg,
                        width: 25,
                      ),
                    ],
                  )
                : Icon(
                    Icons.navigate_next,
                    color: ktextColor2,
                    size: 25,
                  ),
          ],
        ),
      );
    }

    return Scaffold(
      key: _key,
      backgroundColor: kbackgroundColor1,
      appBar: PreferredSize(
        child: CustomAppbar(
            color: kbackgroundColor1,
            title: "Setting",
            onPressed: () {
              _key.currentState!.openDrawer();
            }),
        preferredSize: Size.fromHeight(56),
      ),
      drawer: DrawerWidget(),
      body: Column(children: [
        _itemSetting("Donor Card", () {}, false, kicondonor),
        _itemSetting("Profile", () {}, false, kiconProfie),
        _itemSetting("Help Center", () {}, false, kiconHelp),
        _itemSetting("Share", () {}, false, kiconShare),
        _itemSetting("FAQs", () {}, false, kiconFaqs),
        _itemSetting("Connect With Us", () {}, true, kiconConnect),
        _itemSetting("Logout", () {}, false, kiconLogout),
      ]),
    );
  }
}
