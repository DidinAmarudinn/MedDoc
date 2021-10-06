import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:med/ui/components/item_date.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class HeaderProfileWidget extends StatelessWidget {
  final Function onPressed;
  final DateTime now;
  final int selected;
  final DatePickerController controller;
  const HeaderProfileWidget(
      {Key? key,
      required this.onPressed,
      required this.now,
      required this.controller,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: defaultMargin, right: defaultMargin, left: defaultMargin),
            decoration: BoxDecoration(
              color: kbackgroundColor2,
            ),
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Andhika",
                            style: primaryTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            "Joined since 2021",
                            style:
                                secondaryTextStyle.copyWith(fontWeight: light),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      kimageProfieDummy,
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: kbackgroundColor2,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(defaultMargin * 2),
                    ),
                  ),
                ),
                ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          onPressed(index);
                        },
                        child: ItemDate(
                            selectedCategories: selected,
                            index: index,
                            tgl: 2 + index,
                            mont: "SEP"),
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
