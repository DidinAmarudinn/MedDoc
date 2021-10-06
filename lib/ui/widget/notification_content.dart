import 'package:flutter/material.dart';
import 'package:med/models/notification_model.dart';
import 'package:med/ui/components/item_notification.dart';
import 'package:med/utils/theme.dart';

class NotificationContent extends StatelessWidget {
  const NotificationContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: mockNotification.length + 1,
            itemBuilder: (context, index) {
              if (index == mockNotification.length) {
                return Center(
                    child: Text(
                  "No more notification",
                  style: secondaryTextStyle,
                ));
              } else {
                return ItemNotification(
                    notificationModel: mockNotification[index]);
              }
            },
          ),
        ),
      ],
    );
  }
}
