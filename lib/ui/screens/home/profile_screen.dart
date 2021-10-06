import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:med/ui/components/custom_appbar.dart';
import 'package:med/ui/widget/content_profile.dart';
import 'package:med/ui/widget/drawer_widget.dart';
import 'package:med/ui/widget/header_profile_widget.dart';
import 'package:med/utils/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _selectedValue = 1;
  DatePickerController controller = DatePickerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: kbackgroundColor1,
      appBar: PreferredSize(
        child: CustomAppbar(
            color: kbackgroundColor2,
            title: "Profile",
            isProfile: true,
            onPressed: () {
              _key.currentState!.openDrawer();
            }),
        preferredSize: Size.fromHeight(56),
      ),
      drawer: DrawerWidget(),
      body: ListView(
        children: [
          HeaderProfileWidget(
              onPressed: (index) {
                setState(() {
                  _selectedValue = index;
                  print(index);
                });
              },
              selected: _selectedValue,
              now: DateTime.now(),
              controller: controller),
          ContentProfile()
        ],
      ),
    );
  }
}
