import 'package:flutter/material.dart';
import 'package:med/utils/theme.dart';

class CustomTextfieldAppointment extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  const CustomTextfieldAppointment(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultMargin / 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryTextStyle,
          ),
          SizedBox(
            height: defaultMargin / 3,
          ),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: secondaryTextStyle,
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
