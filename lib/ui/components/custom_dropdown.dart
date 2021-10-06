import 'package:flutter/material.dart';
import 'package:med/utils/theme.dart';

class CustomDropdown extends StatelessWidget {
  final String? selected;
  final String hintDropdown;
  final String label;
  final List<String> list;
  final Function(String) onChanged;
  const CustomDropdown(
      {Key? key,
      this.selected,
      required this.hintDropdown,
      required this.label,
      required this.onChanged,
      required this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: defaultMargin / 2,
          ),
          Text(label, style: primaryTextStyle),
          SizedBox(
            height: defaultMargin / 2,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin / 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.3),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                elevation: 1,
                isExpanded: true,
                value: selected ?? null,
                hint: Text(
                  hintDropdown,
                  style: secondaryTextStyle,
                ),
                style: primaryTextStyle,
                items: list.map((e) {
                  return DropdownMenuItem<String>(
                    child: Text(e),
                    value: e,
                  );
                }).toList(),
                onChanged: (value) {
                  onChanged(value!);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
