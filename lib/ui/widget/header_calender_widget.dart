import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med/ui/screens/explore_screen.dart';
import 'package:med/utils/theme.dart';

class HeaderCalenderWidget extends StatelessWidget {
  const HeaderCalenderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Get.to(() => ExploreScreen());
              },
              child: Container(
                height: 50,
                width: double.infinity,
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
                      "Search Providers",
                      style: greenTextStyle.copyWith(
                          fontSize: 12, fontWeight: light),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: defaultMargin / 2,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: kbackgroundColor3,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Icon(
                Icons.filter_list_outlined,
                color: ktextColor2,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
