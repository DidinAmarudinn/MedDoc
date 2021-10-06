import 'package:flutter/material.dart';
import 'package:med/utils/theme.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const CustomTextField(
      {Key? key, required this.label, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                width: 1,
                color: kprimarytextColor.withOpacity(0.5),
                style: BorderStyle.solid)),
        child: TextField(
          decoration: InputDecoration(
              hintText: label,
              contentPadding: EdgeInsets.all(15),
              border: InputBorder.none),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
