import 'package:flutter/material.dart';
import 'package:med/ui/components/custom_appbar.dart';
import 'package:med/ui/widget/content_calender_widget.dart';
import 'package:med/ui/widget/drawer_widget.dart';
import 'package:med/ui/widget/header_calender_widget.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: kbackgroundColor2,
      appBar: PreferredSize(
        child: CustomAppbar(
          color: kbackgroundColor2,
          title: "Appointments",
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
        preferredSize: Size.fromHeight(56),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kbackgroundColor3,
        child: Image.asset(
          kiconAddCalendar,
          width: 25,
        ),
      ),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          HeaderCalenderWidget(),
          Expanded(child: ContentCalenderWidget()),
        ],
      ),
    );
  }
}
