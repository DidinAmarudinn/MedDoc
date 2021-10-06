import 'package:flutter/material.dart';
import 'package:med/models/doctor_model.dart';
import 'package:med/ui/components/custom_appbar.dart';
import 'package:med/ui/widget/categories_widget.dart';
import 'package:med/ui/widget/drawer_widget.dart';
import 'package:med/ui/widget/header_home_widget.dart';
import 'package:med/ui/widget/need_help_widget.dart';
import 'package:med/ui/widget/top_doctors_widget.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: kbackgroundColor2,
      appBar: PreferredSize(
        child: CustomAppbar(
          color: kbackgroundColor2,
          title: "Home",
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
        preferredSize: Size.fromHeight(56),
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kbackgroundColor3,
        child: Image.asset(
          kiconAddCalendar,
          width: 25,
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          HeaderHomeScreen(),
          SizedBox(
            height: defaultMargin,
          ),
          TopDoctorsWidget(
            doctorModel: mockDoctorModel,
          ),
          SizedBox(
            height: defaultMargin,
          ),
          CategorisWidget(),
          SizedBox(
            height: defaultMargin,
          ),
          NeedHelpWidget(),
        ],
      )),
    );
  }
}
