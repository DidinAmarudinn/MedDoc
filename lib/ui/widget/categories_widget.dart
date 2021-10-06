import 'package:flutter/material.dart';
import 'package:med/ui/components/container_categories.dart';
import 'package:med/utils/theme.dart';

class CategorisWidget extends StatelessWidget {
  const CategorisWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Text(
            "Categories",
            style:
                primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
        ),
        SizedBox(
          height: defaultMargin / 2,
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: defaultMargin),
                  child: CategoriesContainerWidget(
                    title: "Umum",
                  ),
                ),
                CategoriesContainerWidget(
                  title: "Poli Anak",
                ),
                CategoriesContainerWidget(
                  title: "Poli Gigi",
                ),
                CategoriesContainerWidget(
                  title: "Poli Jantung",
                ),
                CategoriesContainerWidget(
                  title: "Farmasi",
                ),
                CategoriesContainerWidget(
                  title: "IGD",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
