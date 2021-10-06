import 'package:flutter/material.dart';
import 'package:med/utils/theme.dart';

class CategoriesContainerWidget extends StatelessWidget {
  final String title;
  const CategoriesContainerWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultMargin / 2),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          backgroundColor: kcategoriesColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(title,
            style: whiteTextStyle.copyWith(fontSize: 12, fontWeight: medium)),
      ),
    );
  }
}
