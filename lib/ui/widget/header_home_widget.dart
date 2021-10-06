import 'package:flutter/material.dart';
import 'package:med/utils/theme.dart';

class HeaderHomeScreen extends StatelessWidget {
  const HeaderHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hey Andhika",
            style:
                primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
          SizedBox(
            height: defaultMargin / 2,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin / 3),
            decoration: BoxDecoration(
              color: kbackgroundColor3,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search_outlined,
                  color: kbgbutton2,
                ),
                Text(
                  "Search Doctors & Hospitals",
                  style:
                      greenTextStyle.copyWith(fontSize: 12, fontWeight: light),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
