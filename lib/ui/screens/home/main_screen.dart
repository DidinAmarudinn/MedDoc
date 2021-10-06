import 'package:flutter/material.dart';
import 'package:med/ui/screens/home/calendar_screen.dart';
import 'package:med/ui/screens/home/home_screen.dart';
import 'package:med/ui/screens/home/notification_screen.dart';
import 'package:med/ui/screens/home/profile_screen.dart';
import 'package:med/ui/widget/bottom_nav_bar.dart';
import 'package:med/utils/theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedPage = 0;
  PageController pageController = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          selectedPage == 0 ? kbackgroundColor2 : kbackgroundColor1,
      bottomNavigationBar: CustomNavBar(
        currentIndex: selectedPage,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
          pageController.jumpToPage(selectedPage);
        },
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            selectedPage = index;
          });
        },
        children: [
          HomeScreen(),
          CalendarScreen(),
          NotificationScreen(),
          ProfileScreen()
        ],
      ),
    );
  }
}
