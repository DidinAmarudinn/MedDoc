import 'package:flutter/material.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class NeedHelpWidget extends StatelessWidget {
  const NeedHelpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Need Help?",
            style:
                primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
          SizedBox(
            height: defaultMargin / 2,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              kimageNeedHelp,
              height: MediaQuery.of(context).size.width / 1.8,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
