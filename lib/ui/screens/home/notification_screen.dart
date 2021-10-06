import 'package:flutter/material.dart';
import 'package:med/ui/components/custom_appbar.dart';
import 'package:med/ui/widget/drawer_widget.dart';
import 'package:med/ui/widget/empety_notification.dart';
import 'package:med/ui/widget/notification_content.dart';
import 'package:med/utils/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: kbackgroundColor1,
      appBar: PreferredSize(
        child: CustomAppbar(
            color: kbackgroundColor1,
            title: "Notification",
            onPressed: () {
              _key.currentState!.openDrawer();
            }),
        preferredSize: Size.fromHeight(56),
      ),
      drawer: DrawerWidget(),
      body: NotificationContent(),
    );
  }
}
