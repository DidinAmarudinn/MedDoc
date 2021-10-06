import 'package:flutter/material.dart';
import 'package:med/models/notification_model.dart';
import 'package:med/utils/theme.dart';

class ItemNotification extends StatelessWidget {
  final NotificationModel notificationModel;
  const ItemNotification({Key? key, required this.notificationModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultMargin),
      margin: EdgeInsets.only(
          bottom: defaultMargin, left: defaultMargin, right: defaultMargin),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        notificationModel.content ?? "",
        style: secondaryTextStyle.copyWith(
          fontWeight: medium,
        ),
      ),
    );
  }
}
