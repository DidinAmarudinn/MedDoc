import 'package:flutter/material.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class EmpetyNotification extends StatelessWidget {
  const EmpetyNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          kimageNotification,
          width: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: defaultMargin,
        ),
      ],
    );
  }
}
