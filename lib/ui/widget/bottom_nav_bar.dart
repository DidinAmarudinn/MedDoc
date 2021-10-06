import 'package:flutter/material.dart';
import 'package:med/utils/theme.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;
  const CustomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: BottomAppBar(
        notchMargin: 10,
        color: kbackgroundColor3,
        child: Container(
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                onTap(0);
              },
              child: Icon(
                Icons.home_outlined,
                size: 32,
                color: currentIndex == 0 ? kbackgroundColor2 : ktextColor2,
              ),
            ),
            MaterialButton(
              minWidth: 30,
              onPressed: () {
                onTap(1);
              },
              child: Icon(
                Icons.calendar_today_outlined,
                size: 25,
                color: currentIndex == 1 ? kbackgroundColor2 : ktextColor2,
              ),
            ),
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                onTap(2);
              },
              child: Icon(
                Icons.notifications_outlined,
                size: 32,
                color: currentIndex == 2 ? kbackgroundColor2 : ktextColor2,
              ),
            ),
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                onTap(3);
              },
              child: Icon(
                Icons.person_outline_outlined,
                size: 30,
                color: currentIndex == 3 ? kbackgroundColor2 : ktextColor2,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
